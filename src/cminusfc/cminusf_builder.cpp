#include "cminusf_builder.hpp"
#define CONST_FP(num) ConstantFP::get((float)num, module.get())
#define CONST_INT(num) ConstantInt::get(num, module.get())

// types
Type *VOID_T;
Type *INT1_T;
Type *INT8_T;
Type *INT32_T;
Type *INT32PTR_T;
Type *FLOAT_T;
Type *FLOATPTR_T;

BasicBlock *trueBB = nullptr;       // 通用true分支
BasicBlock *falseBB = nullptr;      // 通用false分支
BasicBlock *nextBB_while = nullptr; // while语句后的下一个基本块
BasicBlock *condBB_while = nullptr;
bool promote(IRBuilder *builder, Value **l_val_p, Value **r_val_p)
{
    bool is_int = false;
    auto &l_val = *l_val_p;
    auto &r_val = *r_val_p;
    if (l_val->get_type() == r_val->get_type())
    {
        is_int = l_val->get_type()->is_integer_type();
    }
    // 把int_8转int_32
    else if (l_val->get_type() == INT8_T && r_val->get_type() == INT32_T)
    {
        l_val = builder->create_zext(l_val, INT32_T);
        is_int = l_val->get_type()->is_integer_type();
    }
    else if (l_val->get_type() == INT32_T && r_val->get_type() == INT8_T)
    {
        r_val = builder->create_zext(r_val, INT32_T);
        is_int = l_val->get_type()->is_integer_type();
    }
    else if (l_val->get_type() == INT1_T && r_val->get_type() == INT32_T)
    {
        l_val = builder->create_zext(l_val, INT32_T);
        is_int = l_val->get_type()->is_integer_type();
    }
    else if (l_val->get_type() == INT32_T && r_val->get_type() == INT1_T)
    {
        r_val = builder->create_zext(r_val, INT32_T);
        is_int = l_val->get_type()->is_integer_type();
    }
    else
    {
        if (l_val->get_type()->is_integer_type())
        {
            l_val = builder->create_sitofp(l_val, FLOAT_T);
        }
        else
        {
            r_val = builder->create_sitofp(r_val, FLOAT_T);
        }
    }
    return is_int;
}
/* 常量符号表 */
std::list<std::map<std::string, Constant *>> const_table;
/* 多维数组处理 */ ///////////
std::size_t depth = 0;
std::vector<int> indexMax;
std::vector<int> indexList;
// 将变常量插入符号表
bool Insert(std::string name, Constant *val)
{
    //插入到当前作用域的符号表
    auto result = const_table.front().insert(std::pair<std::string, Constant *>(name, val));
    return result.second;
}
void make_new_table()
{
    std::map<std::string, Constant *> new_table;
    const_table.push_front(new_table);
    return;
}
// 退出作用域，删除当前作用域的符号表
void delete_table()
{
    const_table.pop_front();
    return;
}
/*
 * use CMinusfBuilder::Scope to construct scopes
 * scope.enter: enter a new scope
 * scope.exit: exit current scope
 * scope.push: add a new binding to current scope
 * scope.find: find and return the value bound to the name
 */
/*
struct ASTSTARTPOINT : ASTNode
{

    virtual Value *accept(ASTVisitor &) override;
    virtual ~ASTSTARTPOINT() = default;
    std::vector<std::shared_ptr<ASTGlobalDef>> global_defs;
};
*/
Value *CminusfBuilder::visit(ASTSTARTPOINT &node)
{
    Value *ret_val = nullptr;
    VOID_T = module->get_void_type();
    INT1_T = module->get_int1_type();
    INT8_T = module->get_int8_type();
    INT32_T = module->get_int32_type();
    INT32PTR_T = module->get_int32_ptr_type();
    FLOAT_T = module->get_float_type();
    FLOATPTR_T = module->get_float_ptr_type();
    make_new_table();
    for (auto &global_def : node.global_defs)
    {
        ret_val = global_def->accept(*this);
    }
    return ret_val;
}

Value *CminusfBuilder::visit(ASTFuncDef &node)
{
    FunctionType *fun_type = nullptr;
    Type *ret_type = nullptr;
    std::vector<Type *> param_types;
    if (node.type == TYPE_INT)
    {
        ret_type = INT32_T;
    }
    else if (node.type == TYPE_FLOAT)
    {
        ret_type = FLOAT_T;
    }
    else
    {
        ret_type = VOID_T;
    }

    for (auto &param : node.params)
    {
        if (param->type == TYPE_INT)
        {
            if (param->isarray)
            {
                param_types.push_back(INT32PTR_T);
            }
            else
            {
                param_types.push_back(INT32_T);
            }
        }
        else
        {
            if (param->isarray)
            {
                param_types.push_back(FLOATPTR_T);
            }
            else
            {
                param_types.push_back(FLOAT_T);
            }
        }
    }

    fun_type = FunctionType::get(ret_type, param_types);
    auto *func = Function::create(fun_type, node.id, module.get());
    scope.push(node.id, func);
    context.func = func;
    make_new_table();
    auto *funBB = BasicBlock::create(module.get(), "entry", func);
    builder->set_insert_point(funBB);
    scope.enter();
    context.pre_enter_scope = true;
    std::vector<Value *> args;
    for (auto &arg : func->get_args())
    {
        args.push_back(&arg);
    }
    for (unsigned i = 0; i < node.params.size(); ++i)
    {
        if (node.params[i]->isarray)
        {
            Value *array_alloc = nullptr;
            if (node.params[i]->type == TYPE_INT)
            {
                array_alloc = builder->create_alloca(INT32PTR_T);
            }
            else
            {
                array_alloc = builder->create_alloca(FLOATPTR_T);
            }
            builder->create_store(args[i], array_alloc);
            scope.push(node.params[i]->id, array_alloc);
        }
        else
        {
            Value *alloc = nullptr;
            if (node.params[i]->type == TYPE_INT)
            {
                alloc = builder->create_alloca(INT32_T);
            }
            else
            {
                alloc = builder->create_alloca(FLOAT_T);
            }
            builder->create_store(args[i], alloc);
            scope.push(node.params[i]->id, alloc);
        }
    }
    node.block->accept(*this);
    // can't deal with return in both blocks
    if (not builder->get_insert_block()->is_terminated())
    {
        if (context.func->get_return_type()->is_void_type())
        {
            builder->create_void_ret();
        }
        else if (context.func->get_return_type()->is_float_type())
        {
            builder->create_ret(CONST_FP(0.));
        }
        else
        {
            builder->create_ret(CONST_INT(0));
        }
    }
    scope.exit();
    return nullptr;
}

Value *CminusfBuilder::visit(ASTWhileStmt &node)
{
    auto temp_trueBB = trueBB;
    auto temp_falseBB = falseBB;
    auto temp_nextBB_while = nextBB_while;
    auto temp_condBB_while = condBB_while;
    condBB_while = BasicBlock::create(module.get(), "", context.func);
    if (not builder->get_insert_block()->is_terminated())
    {
        builder->create_br(condBB_while);
    }
    builder->set_insert_point(condBB_while);

    trueBB = BasicBlock::create(module.get(), "", context.func);
    falseBB = BasicBlock::create(module.get(), "", context.func);
    nextBB_while = falseBB;
    auto *ret_val = node.expression->accept(*this);
    Value *cond_val = nullptr;
    if (ret_val->get_type() != VOID_T)
    {
        if (ret_val->get_type()->is_integer_type())
        {
            cond_val = builder->create_icmp_ne(ret_val, CONST_INT(0));
        }
        else
        {
            cond_val = builder->create_fcmp_ne(ret_val, CONST_FP(0.));
        }

        builder->create_cond_br(cond_val, trueBB, falseBB);
    }
    builder->set_insert_point(trueBB);
    node.statement->accept(*this);
    if (not builder->get_insert_block()->is_terminated())
    {
        builder->create_br(condBB_while);
    }
    builder->set_insert_point(nextBB_while);
    trueBB = temp_trueBB;
    falseBB = temp_falseBB;
    nextBB_while = temp_nextBB_while;
    condBB_while = temp_condBB_while;
    return nullptr;
}

Value *CminusfBuilder::visit(ASTIfStmt &node)
{
    /* auto temp_t = trueBB;
     auto temp_f = falseBB;
     auto *ret_val = node.expression->accept(*this);
     trueBB = BasicBlock::create(module.get(), "", context.func);

     auto *nextBB = BasicBlock::create(module.get(), "", context.func);
     Value *cond_val = nullptr;
     if (ret_val->get_type() != VOID_T)
     {
         if (ret_val->get_type()->is_integer_type())
         {
             cond_val = builder->create_icmp_ne(ret_val, CONST_INT(0));
         }
         else
         {
             cond_val = builder->create_fcmp_ne(ret_val, CONST_FP(0.));
         }
     }
     if (node.else_statement == nullptr)
     {
         builder->create_cond_br(cond_val, trueBB, nextBB);
     }
     else
     {
         falseBB = BasicBlock::create(module.get(), "", context.func);
         builder->create_cond_br(cond_val, trueBB, falseBB);
     }
     builder->set_insert_point(trueBB);
     node.if_statement->accept(*this);

     if (not builder->get_insert_block()->is_terminated())
     {
         builder->create_br(nextBB);
     }

     if (node.else_statement == nullptr)
     {
     }
     else
     {
         builder->set_insert_point(falseBB);
         node.else_statement->accept(*this);
         if (not builder->get_insert_block()->is_terminated())
         {
             builder->create_br(nextBB);
         }
     }

     builder->set_insert_point(nextBB);
     trueBB = temp_t;
     falseBB = temp_f;
     return nullptr;*/
    // 进入if结点的时候要先存储之前的trueBB和falseBB,退出结点的时候恢复
    auto temp_t = trueBB;
    auto temp_f = falseBB;

    trueBB = BasicBlock::create(module.get(), "", context.func); // true分支

    falseBB = BasicBlock::create(module.get(), "", context.func); // false分支
    // if语句后的下一个基本块
    BasicBlock *nextBB_if;
    if (node.else_statement != nullptr)
    {

        nextBB_if = BasicBlock::create(module.get(), "", context.func);
    }
    else
        nextBB_if = falseBB;

    auto m = node.expression->accept(*this); // 访问条件表达式
    // 生成条件跳转指令
    if (m != nullptr && m->get_type() != VOID_T)
    {
        if (m->get_type() == INT32_T)
        {
            m = builder->create_icmp_ne(m, CONST_INT(0));
        }

        builder->create_cond_br(m, trueBB, falseBB);
    }
    bool next = false;

    builder->set_insert_point(trueBB); // if true
    node.if_statement->accept(*this);
    if (not builder->get_insert_block()->is_terminated())
    {
        next = true; // nextBB_if可达
        builder->create_br(nextBB_if);
    }

    // 存在else分支
    if (node.else_statement != nullptr)
    {
        // current_bb = falseBB;
        builder->set_insert_point(falseBB);
        node.else_statement->accept(*this);
        if (not builder->get_insert_block()->is_terminated())
        {
            next = true; // nextBB_if可达
            builder->create_br(nextBB_if);
        }
    }

    // nextBB_if不可达
    if (!next && node.else_statement)
        nextBB_if->erase_from_parent();
    else
    {
        // current_bb = nextBB_if;
        builder->set_insert_point(nextBB_if);
    }

    trueBB = temp_t;
    falseBB = temp_f;
}

Value *CminusfBuilder::visit(ASTAssignExpression &node)
{
    auto *expr_result = node.expression->accept(*this);
    context.require_lvalue = true;
    auto *var_addr = node.var->accept(*this);
    if (var_addr->get_type()->get_pointer_element_type() !=
        expr_result->get_type())
    {
        if (expr_result->get_type() == INT32_T)
        {
            expr_result = builder->create_sitofp(expr_result, FLOAT_T);
        }
        else if (expr_result->get_type() == INT8_T && var_addr->get_type()->get_pointer_element_type() == INT32_T)
        {
            // 需要i8转换成i32
            expr_result = builder->create_zext(expr_result, INT32_T);
        }
        else
        {
            expr_result = builder->create_fptosi(expr_result, INT32_T);
        }
    }
    builder->create_store(expr_result, var_addr);
    return expr_result;
}

Value *CminusfBuilder::visit(ASTReturnStmt &node)
{
    if (node.expression == nullptr)
    {
        builder->create_void_ret();
    }
    else
    {
        auto *fun_ret_type =
            context.func->get_function_type()->get_return_type();
        auto *ret_val = node.expression->accept(*this);
        if (fun_ret_type != ret_val->get_type())
        {
            if (fun_ret_type->is_integer_type())
            {
                ret_val = builder->create_fptosi(ret_val, INT32_T);
            }
            else
            {
                ret_val = builder->create_sitofp(ret_val, FLOAT_T);
            }
        }

        builder->create_ret(ret_val);
    }

    return nullptr;
}

Value *CminusfBuilder::visit(ASTEmptyStmt &node)
{
    return nullptr;
}
Value *CminusfBuilder::visit(ASTContinueStmt &node)
{
    builder->create_br(condBB_while);
    return nullptr;
}

Value *CminusfBuilder::visit(ASTBreakStmt &node)
{
    return builder->create_br(nextBB_while);
}


// 初始化向量
typedef struct InitItem
{
    bool isValue;
    Value *expr;
    std::vector<InitItem> list;
} Inititem;
InitItem recentInitItem;
std::vector<Value *> tmpfor0;
Constant **tmpforconst;
Type *realType;

Value *CminusfBuilder::visit(ASTInitVal &node)
{
    InitItem newItem;
    if (node.is_exp)
    {
        newItem.expr = node.expression->accept(*this);
        newItem.isValue = true;
    }
    else
    {
        std::vector<InitItem> tmp;
        for (auto element = node.init_vals.rbegin(); element != node.init_vals.rend(); element++)
        {
            element->get()->accept(*this);
            tmp.push_back(recentInitItem);
        }
        newItem.isValue = false;
        newItem.list = tmp;
    }
    recentInitItem = newItem;
    return nullptr;
}

void Assign(Value *target, Value *val, IRBuilder *builder)
{
    Type *target_type;

    if (dynamic_cast<GlobalVariable *>(target))
    {
        target_type = ((GlobalVariable *)target)->get_type(); // 指针
        target_type = ((PointerType *)target_type)->get_element_type();
    }
    else
    {
        target_type = ((AllocaInst *)target)->get_alloca_type();
    }

    // int=float
    if (val->get_type() == FLOAT_T && (target_type == INT32_T))
    {
        auto tmp = builder->create_fptosi(val, INT32_T);
        builder->create_store(tmp, target);
    }
    // float=int
    else if (val->get_type() == INT32_T && target_type == FLOAT_T)
    {
        auto tmp = builder->create_sitofp(val, FLOAT_T);
        builder->create_store(tmp, target);
    }
    else
    {
        builder->create_store(val, target);
    }
}
void SetZero(AllocaInst *alloca, std::size_t nowdepth, IRBuilder *builder, Module *module)
{
    if (nowdepth == indexMax.size())
    {
        auto aGep = builder->create_gep(alloca, tmpfor0);
        Assign(aGep, ConstantInt::get(0, module), &*builder);
    }
    else
    {
        for (int i = 0; i < indexMax[nowdepth]; i++)
        {
            tmpfor0.push_back(ConstantInt::get(i, module));
            SetZero(alloca, nowdepth + 1, &*builder, module);
            tmpfor0.pop_back();
        }
    }
}

Constant *parseConst(int nowdepth, int offset, Type *type)
{
    if (nowdepth == indexMax.size())
        return tmpforconst[offset];
    std::vector<Constant *> tmp;
    int blocksize = 1;
    for (int i = indexMax.size() - 1; i > nowdepth; i--)
    {
        blocksize *= indexMax[i];
    }
    for (int i = 0; i < indexMax[nowdepth]; i++)
    {
        tmp.push_back(parseConst(nowdepth + 1, offset + i * blocksize, type->get_array_element_type()));
    }
    return ConstantArray::get((ArrayType *)type, tmp);
}

void assignInitVal(AllocaInst *alloca, Type *lValType, int isConstant, InitItem initVal, IRBuilder *builder, Module *module, bool firsttime)
{
    if (firsttime)
    {
        depth = 0;
        indexMax.clear();
        indexList.clear();
        realType = lValType;
        while (realType->is_array_type())
        {
            indexMax.push_back(((ArrayType *)realType)->get_num_of_elements());
            indexList.push_back(0);
            realType = realType->get_array_element_type();
        }
        if (alloca != NULL && lValType->is_array_type()) // 局部变量置0
        {
            tmpfor0.clear();
            tmpfor0.push_back(ConstantInt::get(0, module));
            SetZero(alloca, 0, &*builder, module);
        }
        if (isConstant) // 要处理常数
        {
            int totalnum = 1;
            for (int i = 0; i < indexMax.size(); i++)
            {
                totalnum *= indexMax[i];
            }
            tmpforconst = (Constant **)realloc(tmpforconst, sizeof(Constant *) * totalnum); // 分配参数暂存空间
            for (int i = 0; i < totalnum; i++)
            {
                tmpforconst[i] = ConstantZero::get(realType, module);
            }
        }
    }
    // 如果是常数，要返回constant*给外面的函数用
    if (!initVal.isValue) // 是数组，递归操作
    {
        depth++;
        for (unsigned int i = 0; i < initVal.list.size(); i++)
        {
            int beforepos = indexList[depth - 1];
            assignInitVal(alloca, lValType->get_array_element_type(), isConstant, initVal.list[i], &*builder, module, false);

            bool upmatch = false;
            if (beforepos == indexList[depth - 1])
                upmatch = true;
            else
                for (auto j = depth; j < indexList.size(); j++)
                {
                    if (indexList[j] != 0)
                    {
                        upmatch = true;
                        break;
                    }
                }
            if (initVal.list[i].isValue)
                upmatch = false;
            if (upmatch)
            {
                for (auto j = depth; j < indexList.size(); j++)
                {
                    indexList[j] = 0;
                }
                for (auto j = depth - 1;; j--)
                {
                    indexList[j]++;
                    if (j > 0 && indexList[j] == indexMax[j])
                        indexList[j] = 0;
                    else
                        break;
                }
            }
        }
        depth--;
    }
    else // 不是数组，直接赋值
    {
        if (depth < indexMax.size()) // 给的初始值深度不够，自动加深
        {
            depth++;
            assignInitVal(alloca, lValType->get_array_element_type(), isConstant, initVal, &*builder, module, false);
            depth--;
            return;
        }

        if (alloca != NULL) // 非空说明是局部变量，要
        {
            if (alloca->get_type()->get_pointer_element_type()->is_array_type()) // 是数组，要先取指针
            {
                std::vector<Value *> indexListforGep;
                indexListforGep.push_back(ConstantInt::get(0, module));
                for (std::size_t i = 0; i < indexList.size(); i++)
                {
                    indexListforGep.push_back(ConstantInt::get(indexList[i], module));
                }
                auto aGep = builder->create_gep(alloca, indexListforGep);
                Assign(aGep, initVal.expr, &*builder);
            }
            else
                Assign(alloca, initVal.expr, &*builder);
        }
        Constant *tmp;
        if (isConstant)
        {

            // float=int
            if (dynamic_cast<ConstantInt *>(initVal.expr) && lValType == FLOAT_T)
            {
                int val = ((ConstantInt *)initVal.expr)->get_value();
                tmp = ConstantFP::get((float)val, module);
            }
            // int=float
            else if (dynamic_cast<ConstantFP *>(initVal.expr) && lValType == INT32_T)
            {
                float val = ((ConstantFP *)initVal.expr)->get_value();
                tmp = ConstantInt::get((int)val, module);
            }
            else
            {
                tmp = (Constant *)initVal.expr;
            }
            int pos = 0;
            for (int i = 0; i < indexMax.size(); i++)
            {
                pos *= indexMax[i];
                pos += indexList[i];
            }
            tmpforconst[pos] = tmp;
        }
        // 处理成功，下标++
        if (depth > 0)
        {
            for (auto j = depth; j < indexList.size(); j++)
            {
                indexList[j] = 0;
            }
            for (auto j = depth - 1;; j--)
            {
                indexList[j]++;
                if (j > 0 && indexList[j] == indexMax[j])
                    indexList[j] = 0;
                else
                    break;
            }
        }
        // 处理成功，下标++ end
    }
}
bool get_const;
Value *CminusfBuilder::visit(ASTVarDef &node)
{
    //    struct ASTVarDef : ASTGlobalDef, ASTStmt
    // {
    //     bool a;
    //     bool is_init;
    //     virtual Value *accept(ASTVisitor &) override final;
    //     virtual ~ASTVarDef() = default;
    //     SysYType type_;
    //     std::string id;
    //     std::vector<std::shared_ptr<ASTAddExp>> arr_len;
    //     std::shared_ptr<ASTInitVal> init_val;
    // };
    auto name = node.id;
    auto element_type = node.type_ == TYPE_INT ? INT32_T : FLOAT_T;

    Type *lValType;
    lValType = element_type;
    for (int i = node.arr_len.size() - 1; i >= 0; i--)
    {
        auto *len = node.arr_len[i]->accept(*this);
        lValType = ArrayType::get(lValType, ((ConstantInt *)len)->get_value());
    }
    if (scope.in_global())
    {
        GlobalVariable *global_alloca;
        get_const = false;
        // 显式初始化
        if (node.is_init)
        {
            // 进入InitVal
            get_const = true;
            node.init_val->accept(*this);
            get_const = false;
            indexList.clear();
            indexMax.clear();
            depth = 0;
            assignInitVal(NULL, lValType, true, recentInitItem, &*builder, module.get(), true);
            global_alloca = GlobalVariable::create(name, module.get(), lValType, node.a, parseConst(0, 0, lValType));
        }
        // 未初始化，全局变量也需要赋值为0
        else
            global_alloca = GlobalVariable::create(name, module.get(), lValType, node.a, ConstantZero::get(lValType, module.get()));
        // 插入符号表
        scope.push(name, global_alloca);
        // 常量插入常量表
        if (node.a)
            Insert(name, global_alloca->get_init());
    }
    else
    {
        // 分配空间并插入符号表
        auto alloca = builder->create_alloca(lValType);
        scope.push(name, alloca);
        // 初始化
        if (node.is_init)
        {
            // 进入InitVal
            if (node.a)
                get_const = true;
            node.init_val->accept(*this);
            get_const = false;

            std::vector<int> indexList;
            indexList.clear();
            indexMax.clear();
            depth = 0;
            assignInitVal(alloca, lValType, node.a, recentInitItem, &*builder, module.get(), true);
            if (node.a)
            {
                Insert(name, parseConst(0, 0, lValType));
            }
        }
    }
    return nullptr;
}
Value *CminusfBuilder::visit(ASTFuncFParam &node)
{
    return nullptr;
}
Value *CminusfBuilder::visit(ASTExpStmt &node)
{
    return node.expression->accept(*this);
}
 
Value *CminusfBuilder::visit(ASTBlock &node)
{
    bool need_exit_scope = !context.pre_enter_scope;
    if (context.pre_enter_scope)
    {
        context.pre_enter_scope = false;
    }
    else
    {
        scope.enter();
        make_new_table();
    }
  
    for (auto &stmt : node.Stmts)
    {

        stmt->accept(*this);
        if (builder->get_insert_block()->is_terminated())
        {
            break;
        }
    }

    if (need_exit_scope)
    {
        scope.exit();
        delete_table();
    }
    return nullptr;
}

Constant *Lookup(std::string name)
{
    // 首先在当前函数中从最近的scope开始寻找
    for (auto i = const_table.begin(); i != const_table.end(); i++)
    {
        auto iter = i->find(name);
        if (iter != i->end())
            return iter->second;
    }
    return NULL;
}

Value *CminusfBuilder::visit(ASTLVal &node)
{
    /*     auto *var = scope.find(node.id);
        auto is_int =
            var->get_type()->get_pointer_element_type()->is_integer_type();
        auto is_float =
            var->get_type()->get_pointer_element_type()->is_float_type();
        auto is_ptr =
            var->get_type()->get_pointer_element_type()->is_pointer_type();
        bool should_return_lvalue = context.require_lvalue;
        context.require_lvalue = false;
        Value *ret_val = nullptr;

        if (node.Exps.empty())
        {
            if (should_return_lvalue)
            {
                ret_val = var;
                context.require_lvalue = false;
            }
            else
            {

                if (is_int || is_float || is_ptr)
                {
                    ret_val = builder->create_load(var);
                }
                else
                {
                    ret_val =
                        builder->create_gep(var, {CONST_INT(0), CONST_INT(0)});
                }
            }
        }
        else
        {
            auto *val = node.Exps[0]->accept(*this);

            for (auto exp : node.Exps)
            {
                auto *value = exp->accept(*this);
            }
            Value *tmp_ptr = nullptr;
            if (is_int || is_float)
            {
                tmp_ptr = builder->create_gep(var, {val});
            }
            else if (is_ptr)
            {
                auto *array_load = builder->create_load(var);
                tmp_ptr = builder->create_gep(array_load, {val});
            }
            else
            {
                tmp_ptr = builder->create_gep(var, {CONST_INT(0), val});
            }
            if (should_return_lvalue)
            {
                ret_val = tmp_ptr;
                context.require_lvalue = false;
            }
            else
            {
                ret_val = builder->create_load(tmp_ptr);
            }
        } */
    bool should_return_lval = context.require_lvalue;
    context.require_lvalue = false;
    Value *ret_val = nullptr;
    Value *recent_ptr = nullptr;
    auto temp = scope.find(node.id);
    ret_val = temp;
    auto temp_const = Lookup(node.id);
    auto lValType = temp->get_type()->get_pointer_element_type();
    // 获取常量
    if (get_const)
    {
        recent_ptr = temp;
        /* if (node.Exps.size() > 0)
         {
             for (auto tmp : node.Exps)
             {
                 tmp->accept(*this);
                 if (dynamic_cast<ConstantArray *>(temp_const) && dynamic_cast<ConstantInt *>(recent_value))
                     temp_const = ((ConstantArray *)temp_const)->get_element_value(((ConstantInt *)recent_value)->get_value());
             }
         }*/
        ret_val = temp_const;
    }
    // 全局作用域访问左值一定是处理常量,所以接下来一定是局部作用域处理
    else
    {
        for (auto tmp : node.Exps)
        {
            auto exp = tmp->accept(*this);
            if (lValType->is_pointer_type())
            {
                lValType = lValType->get_pointer_element_type();
                temp = builder->create_load(temp);
                temp = builder->create_gep(temp, {exp});
            }
            else if (lValType->is_array_type())
            {
                lValType = lValType->get_array_element_type();
                temp = builder->create_gep(temp, {CONST_INT(0), exp});
            }
        }
        recent_ptr = temp;
        if (lValType->is_array_type())
            ret_val = builder->create_gep(temp, {CONST_INT(0), CONST_INT(0)});
        else if (!should_return_lval)
            ret_val = builder->create_load(recent_ptr);
    }
    return ret_val;
}

Value *CminusfBuilder::visit(ASTNumber &node)
{
    if (node.type == TYPE_INT)
    {
        return CONST_INT(node.i_val);
    }
    return CONST_FP(node.f_val);
}

Value *CminusfBuilder::visit(ASTUnaryExp &node)
{
    if (node.lval != nullptr)
    {
        return node.lval->accept(*this);
    }
    if (node.number != nullptr)
    {
        return node.number->accept(*this);
    }
    if (node.exp != nullptr)
    {
        return node.exp->accept(*this);
    }
    if (node.unary_exp != nullptr)
    {
        if (node.unary_op == OP_NEG)
        {
            auto *val = node.unary_exp->accept(*this);
            if (val->get_type()->is_integer_type())
            {
                if (val->get_type()->is_int1_type())
                {
                    val = builder->create_zext(val, INT32_T);
                }
                val = builder->create_imul(val, CONST_INT(-1));
            }
            else
            {
                val = builder->create_fmul(val, CONST_FP(-1));
            }
            return val;
        }
        else if (node.unary_op == OP_NOT)
        {
            auto tempt = trueBB;
            auto tempf = falseBB;
            trueBB = tempf;
            falseBB = tempt;
            auto *val = node.unary_exp->accept(*this);
            if (val->get_type() == VOID_T)
                return nullptr;
            else if (val->get_type() == INT1_T)
                val = builder->create_zext(val, INT32_T);
            auto m = builder->create_icmp_eq(val, CONST_INT(0));
            trueBB = tempt;
            falseBB = tempf;
            return m;
        }
        else if (node.unary_exp != nullptr)
        {
            return node.unary_exp->accept(*this);
        }
    }
    else
    {
        auto *func = dynamic_cast<Function *>(scope.find(node.id));
        std::vector<Value *> args;
        auto param_type = func->get_function_type()->param_begin();
        for (auto &arg : node.args)
        {
            auto *arg_val = arg->accept(*this);
            // 如果参数是int8_t类型，需要把int32_t转换成int8
            if (*param_type == module->get_int8_type() && arg_val->get_type()->is_integer_type())
            {
                arg_val = builder->create_trunc(arg_val, INT8_T);
            }
            if (!arg_val->get_type()->is_pointer_type() &&
                *param_type != arg_val->get_type())
            {
                if (arg_val->get_type()->is_integer_type() && *param_type == FLOAT_T)
                {
                    arg_val = builder->create_sitofp(arg_val, FLOAT_T);
                }
                else if (arg_val->get_type()->is_float_type() && *param_type == INT32_T)
                {
                    arg_val = builder->create_fptosi(arg_val, INT32_T);
                }
            }
            args.push_back(arg_val);
            param_type++;
        }

        return builder->create_call(static_cast<Function *>(func), args);
    }
}

Value *CminusfBuilder::visit(ASTMulExp &node)
{
    if (node.mul_exp == nullptr)
    {
        return node.unary_exp->accept(*this);
    }

    auto *l_val = node.mul_exp->accept(*this);
    auto *r_val = node.unary_exp->accept(*this);
    bool is_int = promote(&*builder, &l_val, &r_val);

    Value *ret_val = nullptr;
    switch (node.mul_op)
    {
    case OP_MUL:
        if (is_int)
        {
            ret_val = builder->create_imul(l_val, r_val);
        }
        else
        {
            ret_val = builder->create_fmul(l_val, r_val);
        }
        break;
    case OP_DIV:
        if (is_int)
        {
            ret_val = builder->create_isdiv(l_val, r_val);
        }
        else
        {
            ret_val = builder->create_fdiv(l_val, r_val);
        }
        break;

    case OP_MOD:
        ret_val = builder->create_irem(l_val, r_val);
        break;
    }

    return ret_val;
}

Value *CminusfBuilder::visit(ASTAddExp &node)
{
    if (node.add_exp == nullptr)
    {
        return node.mul_exp->accept(*this);
    }

    auto *l_val = node.add_exp->accept(*this);
    if (node.mul_exp == nullptr)
    {
        return l_val;
    }
    auto *r_val = node.mul_exp->accept(*this);
    if (l_val->get_type() == INT1_T)
    {
        l_val = builder->create_zext(l_val, INT32_T);
    }
    if (r_val->get_type() == INT1_T)
    {
        r_val = builder->create_zext(r_val, INT32_T);
    }
    bool is_int = promote(&*builder, &l_val, &r_val);
    Value *ret_val = nullptr;
    switch (node.add_op)
    {
    case OP_PLUS:
        if (is_int)
        {
            ret_val = builder->create_iadd(l_val, r_val);
        }
        else
        {
            ret_val = builder->create_fadd(l_val, r_val);
        }
        break;
    case OP_MINUS:
        if (is_int)
        {
            ret_val = builder->create_isub(l_val, r_val);
        }
        else
        {
            ret_val = builder->create_fsub(l_val, r_val);
        }
        break;
    }
    return ret_val;
}

Value *CminusfBuilder::visit(ASTRelExp &node)
{
    if (node.rel_exp == nullptr)
    {
        return node.add_exp->accept(*this);
    }

    auto *l_val = node.rel_exp->accept(*this);
    auto *r_val = node.add_exp->accept(*this);
    bool is_int = promote(&*builder, &l_val, &r_val);
    Value *cmp = nullptr;
    switch (node.rel_op)
    {
    case OP_LT:
        if (is_int)
        {
            cmp = builder->create_icmp_lt(l_val, r_val);
        }
        else
        {
            cmp = builder->create_fcmp_lt(l_val, r_val);
        }
        break;
    case OP_LE:
        if (is_int)
        {
            cmp = builder->create_icmp_le(l_val, r_val);
        }
        else
        {
            cmp = builder->create_fcmp_le(l_val, r_val);
        }
        break;
    case OP_GE:
        if (is_int)
        {
            cmp = builder->create_icmp_ge(l_val, r_val);
        }
        else
        {
            cmp = builder->create_fcmp_ge(l_val, r_val);
        }
        break;
    case OP_GT:
        if (is_int)
        {
            cmp = builder->create_icmp_gt(l_val, r_val);
        }
        else
        {
            cmp = builder->create_fcmp_gt(l_val, r_val);
        }
        break;
    }

    return builder->create_zext(cmp, INT32_T);
}

Value *CminusfBuilder::visit(ASTEqExp &node)
{
    if (node.eq_exp == nullptr)
    {
        return node.rel_exp->accept(*this);
    }

    auto *l_val = node.eq_exp->accept(*this);
    auto *r_val = node.rel_exp->accept(*this);
    bool is_int = promote(&*builder, &l_val, &r_val);
    Value *cmp = nullptr;
    switch (node.eq_op)
    {
    case OP_EQ:
        if (is_int)
        {
            cmp = builder->create_icmp_eq(l_val, r_val);
            break;
        }

        if (l_val->get_type() == INT1_T)
        {
            l_val = builder->create_zext(l_val, INT32_T);
        }
        if (r_val->get_type() == INT1_T)
        {
            r_val = builder->create_zext(r_val, INT32_T);
        }
        if (r_val->get_type() == INT32_T && l_val->get_type() == INT32_T)
        {
            cmp = builder->create_icmp_eq(l_val, r_val);
            break;
        }
        if (r_val->get_type() == INT32_T && l_val->get_type() == FLOAT_T)
        {
            r_val = builder->create_sitofp(r_val, FLOAT_T);
        }
        if (l_val->get_type() == INT32_T && r_val->get_type() == FLOAT_T)
        {
            l_val = builder->create_sitofp(l_val, FLOAT_T);
        }
        cmp = builder->create_fcmp_eq(l_val, r_val);
        break;
    case OP_NEQ:
        if (is_int)
        {
            cmp = builder->create_icmp_ne(l_val, r_val);
        }

        else
        {
            cmp = builder->create_fcmp_ne(l_val, r_val);
        }
        break;
    }

    return builder->create_zext(cmp, INT32_T);
}

Value *CminusfBuilder::visit(ASTLAndExp &node)
{
    if (node.land_exp == nullptr)
    {
        return node.eq_exp->accept(*this);
    }
    auto *nextBB = BasicBlock::create(module.get(), "", context.func);
    auto temp_BB = trueBB; // 保存
    trueBB = nextBB;       // 更新trueBB
    auto *l_val = node.land_exp->accept(*this);
    trueBB = temp_BB;
    if (l_val->get_type() == INT32_T)
    {
        l_val = builder->create_icmp_ne(l_val, CONST_INT(0));
    }
    if (l_val->get_type() != VOID_T)
    {
        builder->create_cond_br(l_val, nextBB, falseBB);
    }
    builder->set_insert_point(nextBB);
    auto *r_val = node.eq_exp->accept(*this);
    if (r_val->get_type() == INT32_T)
    {
        r_val = builder->create_icmp_ne(r_val, CONST_INT(0));
    }
    return builder->create_cond_br(r_val, trueBB, falseBB);
}

Value *CminusfBuilder::visit(ASTLOrExp &node)
{
    if (node.lor_exp == nullptr)
    {
        auto m = node.land_exp->accept(*this);
        return m;
    }
    auto *nextBB = BasicBlock::create(module.get(), "", context.func);
    auto temp_f = falseBB;
    falseBB = nextBB; // 更新falseBB

    auto *l_val = node.lor_exp->accept(*this);
    falseBB = temp_f;
    if (l_val->get_type() == INT32_T)
    {
        l_val = builder->create_icmp_ne(l_val, CONST_INT(0));
    }
    if (l_val->get_type() != VOID_T)
    {
        builder->create_cond_br(l_val, trueBB, nextBB);
    }
    builder->set_insert_point(nextBB);
    auto *r_val = node.land_exp->accept(*this);
    if (r_val->get_type() != VOID_T)
    {
        if (r_val->get_type() == INT32_T)
        {
            r_val = builder->create_icmp_ne(r_val, CONST_INT(0));
        }
        return builder->create_cond_br(r_val, trueBB, falseBB);
    }
    return nullptr;
}

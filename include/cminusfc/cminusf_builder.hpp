#pragma once

#include "BasicBlock.hpp"
#include "Constant.hpp"
#include "Function.hpp"
#include "IRBuilder.hpp"
#include "Module.hpp"
#include "Type.hpp"
#include "ast.hpp"

#include <map>
#include <memory>

class Scope
{
public:
    // enter a new scope
    void enter()
    {
        inner.emplace_back();
    }

    // exit a scope
    void exit()
    {
        inner.pop_back();
    }

    bool in_global()
    {
        return inner.size() == 1;
    }

    // push a name to scope
    // return true if successful
    // return false if this name already exits
    bool push(const std::string &name, Value *val)
    {
        auto result = inner[inner.size() - 1].insert({name, val});
        return result.second;
    }

    Value *find(const std::string &name)
    {
        for (auto s = inner.rbegin(); s != inner.rend(); s++)
        {
            auto iter = s->find(name);
            if (iter != s->end())
            {
                return iter->second;
            }
        }

        // Name not found: handled here?
        assert(false && "Name not found in scope");

        return nullptr;
    }

private:
    std::vector<std::map<std::string, Value *>> inner;
};

class CminusfBuilder : public ASTVisitor
{
public:
    CminusfBuilder()
    {
        module = std::make_unique<Module>();
        builder = std::make_unique<IRBuilder>(nullptr, module.get());
        auto *TyVoid = module->get_void_type();
        auto *TyInt32 = module->get_int32_type();
        auto *TyInt8 = module->get_int8_type();
        auto *TyFloat = module->get_float_type();
        /*int getarray(int a[]){
  int n;
  scanf("%d",&n);
  for(int i=0;i<n;i++)scanf("%d",&a[i]);
  return n;
}*/
        auto *TyInt32Ptr = module->get_pointer_type(TyInt32);
                auto *TyFloatPtr = module->get_pointer_type(TyFloat);

        auto *input_type = FunctionType::get(TyInt32, {});
        auto *input_fun = Function::create(input_type, "getint", module.get());

        auto *input_char_type = FunctionType::get(TyInt8, {});
        auto *input_char_fun = Function::create(input_char_type, "getch", module.get());

        auto *input_array_type = FunctionType::get(TyInt32, {TyInt32Ptr});
        auto *input_array_fun = Function::create(input_array_type, "getarray", module.get());
        auto *input_float_type = FunctionType::get(TyFloat, {});
        auto *input_float_fun = Function::create(input_float_type, "getfloat", module.get());

        auto *input_farray_type = FunctionType::get( TyFloat, {TyFloatPtr});
        auto *input_farray_fun = Function::create(input_farray_type, "getfarray", module.get());

        std::vector<Type *> output_params;
        output_params.push_back(TyInt32);
        auto *output_type = FunctionType::get(TyVoid, output_params);
        auto *output_fun = Function::create(output_type, "putint", module.get());

        std::vector<Type *> output_float_params;
        output_float_params.push_back(TyFloat);
        auto *output_float_type = FunctionType::get(TyVoid, output_float_params);
        auto *output_float_fun = Function::create(output_float_type, "putfloat", module.get());

        std::vector<Type *> output_char_params;
        output_char_params.push_back(TyInt8);
        auto *output_char_type = FunctionType::get(TyVoid, output_char_params);
        auto *output_char_fun = Function::create(output_char_type, "putch", module.get());

        /*void putf(char a[], ...) {
    va_list args;
    va_start(args, a);
    vfprintf(stdout, a, args);
    va_end(args);
        }*/
        // putf是可变参数,不能和之前一样
        std::vector<Type *> output_f_params;
        output_f_params.push_back(TyInt8);
        auto *output_f_type = FunctionType::get(TyVoid, output_f_params);
        auto *output_f_fun = Function::create(output_f_type, "putf", module.get());

        std ::vector<Type *> output_array_params;
        output_array_params.push_back(TyInt32);
        auto *output_array_type = FunctionType::get(TyVoid, output_array_params);
        auto *output_array_fun = Function::create(output_array_type, "putarray", module.get());

        std::vector<Type *> output_farray_params;
        output_farray_params.push_back(TyFloat);
        auto *output_farray_type = FunctionType::get(TyVoid, output_farray_params);
        auto *output_farray_fun = Function::create(output_farray_type, "putfarray", module.get());

        scope.enter();

        scope.push("getint", input_fun);
        scope.push("getch", input_char_fun);
        scope.push("getarray", input_array_fun);
        scope.push("getfloat", input_float_fun);
        scope.push("getfarray", input_farray_fun);
        scope.push("putint", output_fun);
        scope.push("putch", output_char_fun);
        scope.push("putarray", output_array_fun);
        scope.push("putfloat", output_float_fun);
        scope.push("putfarray", output_farray_fun);
        scope.push("putf", output_f_fun);
    }

    std::unique_ptr<Module> getModule()
    {
        return std::move(module);
    }

private:
    virtual Value *visit(ASTSTARTPOINT &) override final;   
    virtual Value *visit(ASTVarDef &) override final;
    virtual Value *visit(ASTFuncDef &) override final;
    virtual Value *visit(ASTInitVal &) override final;
    virtual Value *visit(ASTFuncFParam &) override final;
    virtual Value *visit(ASTBlock &) override final;
    virtual Value *visit(ASTIfStmt &) override final;
    virtual Value *visit(ASTWhileStmt &) override final;
    virtual Value *visit(ASTBreakStmt &) override final;
    virtual Value *visit(ASTContinueStmt &) override final;
    virtual Value *visit(ASTReturnStmt &) override final;
    virtual Value *visit(ASTEmptyStmt &) override final;
    virtual Value *visit(ASTAssignExpression &) override final;
    virtual Value *visit(ASTLVal &) override final;
    virtual Value *visit(ASTNumber &) override final;
    virtual Value *visit(ASTUnaryExp &) override final;
    virtual Value *visit(ASTMulExp &) override final;
    virtual Value *visit(ASTAddExp &) override final;
    virtual Value *visit(ASTRelExp &) override final;
    virtual Value *visit(ASTEqExp &) override final;
    virtual Value *visit(ASTLAndExp &) override final;
    virtual Value *visit(ASTLOrExp &) override final;

    std::unique_ptr<IRBuilder> builder;
    Scope scope;
    std::unique_ptr<Module> module;

    struct
    {
        // whether require lvalue
        bool require_lvalue = false;
        // function that is being built
        Function *func = nullptr;
        // detect scope pre-enter (for elegance only)
        bool pre_enter_scope = false;
    } context;
};

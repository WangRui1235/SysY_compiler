#pragma once

extern "C"
{
#include "syntax_tree.h"
    extern syntax_tree *parse(const char *input);
}
#include "User.hpp"
#include <memory>
#include <string>
#include <vector>

enum SysYType
{
    TYPE_INT,
    TYPE_FLOAT,
    TYPE_VOID,
    TYPE_CONSTINT,
    TYPE_CONSTFLOAT
};

enum RelOp
{
    // <=
    OP_LE,
    // <
    OP_LT,
    // >
    OP_GT,
    // >=
    OP_GE

};

enum EqOp
{
    // ==
    OP_EQ,
    // !=
    OP_NEQ
};

enum AddOp
{
    // +
    OP_PLUS,
    // -
    OP_MINUS
};

enum MulOp
{
    // *
    OP_MUL,
    // /
    OP_DIV,
    // %
    OP_MOD
};

enum UnaryOp
{
    // -
    OP_NEG,
    // !
    OP_NOT,
    //+
    OP_POS
};
class AST;
struct ASTSTARTPOINT;
struct ASTCompUnit;
struct ASTDecl;
struct ASTConstDecl;
struct ASTBType;
struct ASTConstDef;
struct ASTVarDecl;
struct ASTVarDef;
struct ASTInitVal;
struct ASTFuncDef;
struct ASTFuncType;
struct ASTStmt;
struct ASTExp;
struct ASTLVal;
struct ASTNumber;
struct ASTUnaryExp;
struct ASTFuncRParams;
struct ASTMulExp;
struct ASTAddExp;
struct ASTRelExp;
struct ASTEqExp;
struct ASTLAndExp;
struct ASTLOrExp;
struct ASTReturnStmt;
struct ASTBreakStmt;
struct ASTContinueStmt;
struct ASTEmptyStmt;
struct ASTIfStmt;
struct ASTWhileStmt;
struct ASTAssignExpression;
struct ASTExpStmt;
struct ASTFuncFParam;
struct ASTNode;
struct ASTBlock;
class ASTVisitor;

class AST
{
public:
    AST() = delete;
    AST(syntax_tree *);
    AST(AST &&tree)
    {
        root = tree.root;
        tree.root = nullptr;
    };
    ASTSTARTPOINT *get_root() { return root.get(); }
    void run_visitor(ASTVisitor &visitor);
    void functiona(_syntax_tree_node *n_info, ASTConstDef *node);
    void functionb(_syntax_tree_node *n_info, ASTVarDef *node);
    ASTNode *transform_node_iter(syntax_tree_node *);
    std::shared_ptr<ASTSTARTPOINT> root = nullptr;
};

struct ASTNode
{
    virtual Value *accept(ASTVisitor &) = 0;
    virtual ~ASTNode() = default;
};

struct ASTSTARTPOINT : ASTNode
{
    virtual Value *accept(ASTVisitor &) override;
    virtual ~ASTSTARTPOINT() = default;
    std::shared_ptr<ASTCompUnit> comp_unit;
};

struct ASTCompUnit : ASTNode
{
    virtual Value *accept(ASTVisitor &) override;
    virtual ~ASTCompUnit() = default;
    std::vector<std::shared_ptr<ASTCompUnit>> comp_units;
};

struct ASTDecl : ASTCompUnit
{
    virtual ~ASTDecl() = default;
    SysYType type;
    std::string id;
};

struct ASTConstDecl : ASTDecl
{
    virtual ~ASTConstDecl() = default;
    virtual Value *accept(ASTVisitor &) override final;
    SysYType type;
    std::vector<std::shared_ptr<ASTConstDef>> const_defs;
};
/*
ConstInitVal 初始化器必须是以下三种情况之一：
a) 一对花括号 {}，表示所有元素初始为 0。
b) 与多维数组中数组维数和各维长度完全对应的初始值，如{{1,2},{3,4},
{5,6}}、{1,2,3,4,5,6}、{1,2,{3,4},5,6}均可作为 a[3][2]的初始值。
c) 如果花括号括起来的列表中的初始值少于数组中对应维的元素个数，则
该维其余部分将被隐式初始化，需要被隐式初始化的整型元素均初始为
0，如{{1, 2},{3}, {5}}、{1,2,{3},5}、{{},{3,4},5,6}均可作为 a[3][2]的初
始值，前两个将 a 初始化为{{1, 2},{3,0}, {5,0}}，{{},{3,4},5,6}将 a 初始
化为{{0,0},{3,4},{5,6}}。
*/
struct ASTConstDef : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTConstDef() = default;
    std::string id;
    std::vector<std::shared_ptr<ASTAddExp>> ConstExps;
    std::vector<std::shared_ptr<ASTAddExp>> RConstExps;
    std::vector<std::string> info;
};
struct ASTVarDef : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTVarDef() = default;
    std::string id;
    SysYType type;
    std::vector<std::shared_ptr<ASTAddExp>> ConstExps;
    std::vector<std::shared_ptr<ASTAddExp>> RConstExps;
    std::vector<std::string> info;
};

struct ASTVarDecl : ASTDecl
{
    virtual ~ASTVarDecl() = default;
    virtual Value *accept(ASTVisitor &) override final;
    SysYType type;
    std::vector<std::shared_ptr<ASTVarDef>> var_defs;
};

struct ASTInitVal : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTInitVal() = default;
    std::shared_ptr<ASTExp> expression;

    std::vector<std::shared_ptr<ASTInitVal>> init_vals;
};

struct ASTFuncDef : ASTCompUnit
{
    SysYType type;
    std::string id;
    virtual Value *accept(ASTVisitor &) override final;
    std::vector<std::shared_ptr<ASTFuncFParam>> params;
    std::shared_ptr<ASTBlock> block;
};

struct ASTFuncFParam : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTFuncFParam() = default;
    SysYType type;
    std::string id;
    bool isarray;
    std::vector<std::shared_ptr<ASTExp>> Exps;
};

struct ASTBlock : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTBlock() = default;
    // std::vector<std::shared_ptr<ASTBlockItem>> block_items;
    std::vector<std::shared_ptr<ASTDecl>> Decls;
};

struct ASTStmt : ASTDecl
{
    std::string type;
    virtual ~ASTStmt() = default;
};

struct ASTAssignExpression : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLVal> var;
    std::shared_ptr<ASTExp> expression;
};

struct ASTExpStmt : ASTStmt
{
    std::shared_ptr<ASTExp> exp; // 可选的表达式
    // Exp SEMICOLON||SEMICOLON---->这里进行了整合
};

struct ASTEmptyStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
};

struct ASTIfStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLOrExp> expression;
    std::shared_ptr<ASTStmt> if_statement;
    std::shared_ptr<ASTStmt> else_statement; // 可选的 else 语句
};

struct ASTWhileStmt : ASTStmt
{
    virtual ~ASTWhileStmt() = default;
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLOrExp> expression;
    std::shared_ptr<ASTStmt> statement;
    int break_exist = 0;
};

struct ASTBreakStmt : ASTStmt
{
    virtual ~ASTBreakStmt() = default;
    virtual Value *accept(ASTVisitor &) override final;
};

struct ASTContinueStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
};

struct ASTReturnStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTExp> expression; // 可选的返回值表达式
};

struct ASTExp : ASTNode
{
    virtual ~ASTExp() = default;
};

struct ASTLVal : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTLVal() = default;
    std::string id;
    std::vector<std::shared_ptr<ASTExp>> Exps;
};

struct ASTNumber : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    SysYType type;
    union
    {
        int i_val;
        float f_val;
    };
};

struct ASTUnaryExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTUnaryExp() = default;
    std::string id;
    UnaryOp unary_op;
    std::shared_ptr<ASTUnaryExp> unary_exp;
    std::shared_ptr<ASTLVal> lval;
    std::shared_ptr<ASTExp> exp;
    std::shared_ptr<ASTNumber> number;
    std::vector<std ::shared_ptr<ASTExp>> args;
};

struct ASTFuncRParams : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTFuncRParams() = default;
    std::vector<std::shared_ptr<ASTExp>> Exps;
};

struct ASTMulExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTMulExp() = default;
    std::shared_ptr<ASTMulExp> mul_exp;
    std::shared_ptr<ASTUnaryExp> unary_exp;
    MulOp mul_op;
};

struct ASTAddExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTAddExp() = default;
    std::shared_ptr<ASTAddExp> add_exp;
    std::shared_ptr<ASTMulExp> mul_exp;
    AddOp add_op;
};

struct ASTRelExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTRelExp() = default;
    std::shared_ptr<ASTRelExp> rel_exp;
    std::shared_ptr<ASTAddExp> add_exp;
    RelOp rel_op;
};

struct ASTEqExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTEqExp() = default;
    std::shared_ptr<ASTEqExp> eq_exp;
    std::shared_ptr<ASTRelExp> rel_exp;
    EqOp eq_op;
};

struct ASTLAndExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTLAndExp() = default;
    std::shared_ptr<ASTLAndExp> land_exp;
    std::shared_ptr<ASTEqExp> eq_exp;
};

struct ASTLOrExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTLOrExp() = default;
    std::shared_ptr<ASTLOrExp> lor_exp;
    std::shared_ptr<ASTLAndExp> land_exp;
};

class ASTVisitor
{
public:
    virtual Value *visit(ASTSTARTPOINT &) = 0;
    virtual Value *visit(ASTCompUnit &) = 0;
    virtual Value *visit(ASTConstDecl &) = 0;
    virtual Value *visit(ASTConstDef &) = 0;
    virtual Value *visit(ASTVarDecl &) = 0;
    virtual Value *visit(ASTVarDef &) = 0;
    virtual Value *visit(ASTInitVal &) = 0;
    virtual Value *visit(ASTFuncDef &) = 0;
    virtual Value *visit(ASTFuncFParam &) = 0;
    virtual Value *visit(ASTBlock &) = 0;
    virtual Value *visit(ASTIfStmt &) = 0;
    virtual Value *visit(ASTWhileStmt &) = 0;
    virtual Value *visit(ASTBreakStmt &) = 0;
    virtual Value *visit(ASTContinueStmt &) = 0;
    virtual Value *visit(ASTReturnStmt &) = 0;
    virtual Value *visit(ASTEmptyStmt &) = 0;
    virtual Value *visit(ASTAssignExpression &) = 0;

    virtual Value *visit(ASTLVal &) = 0;

    virtual Value *visit(ASTNumber &) = 0;
    virtual Value *visit(ASTUnaryExp &) = 0;

    virtual Value *visit(ASTMulExp &) = 0;
    virtual Value *visit(ASTAddExp &) = 0;
    virtual Value *visit(ASTRelExp &) = 0;
    virtual Value *visit(ASTEqExp &) = 0;
    virtual Value *visit(ASTLAndExp &) = 0;
    virtual Value *visit(ASTLOrExp &) = 0;
};

class ASTPrinter : public ASTVisitor
{
public:
    virtual Value *visit(ASTSTARTPOINT &) override final;
    virtual Value *visit(ASTCompUnit &) override final;
    virtual Value *visit(ASTConstDecl &) override final;
    virtual Value *visit(ASTConstDef &) override final;
    virtual Value *visit(ASTVarDecl &) override final;
    virtual Value *visit(ASTVarDef &) override final;
    virtual Value *visit(ASTInitVal &) override final;
    virtual Value *visit(ASTFuncDef &) override final;
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

    void add_depth() { depth += 2; }
    void remove_depth() { depth -= 2; }

private:
    int depth = 0;
};
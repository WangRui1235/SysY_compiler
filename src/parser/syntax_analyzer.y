%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "syntax_tree.h"

// external functions from lex
extern int yylex();
extern int yyparse();
extern int yyrestart();
extern FILE * yyin;

// external variables from lexical_analyzer module
extern int lines;
extern char * yytext;
extern int pos_end;
extern int pos_start;

// Global syntax tree
syntax_tree *gt;

// Error reporting
void yyerror(const char *s);

// Helper functions written for you with love
syntax_tree_node *node(const char *node_name, int children_num, ...);
%}

/* TODO: Complete this definition.
   Hint: See pass_node(), node(), and syntax_tree.h.
         Use forward declaring. */ 
%union {
    syntax_tree_node *node;
}

/* TODO: Your tokens here. */
%token <node> ERROR ADD SUB MUL EXC DIV LT LTE GT GTE EQ NEQ ASSIGN SEMICOLON COMMA LPAREN RPAREN LBRACKET RBRACKET LBRACE RBRACE ELSE IF INT RETURN VOID WHILE FLOAT PER Ident IntConst FloatConst BREAK CONST CONTINUE OR AND
%type <node>  STARTPOINT CompUnit GlobalDecl ArrayParamList ConstDecl VarDefList VarDecl  VarDef   InitVal InitValList FuncDef FuncFParams FuncFParam ArrayExpList BlockItemList ComExp Block BlockItem Stmt Exp Cond LVal PrimaryExp UnaryExp UnaryOp FuncRParams MulExp AddExp RelExp EqExp LAndExp LOrExp  

%start STARTPOINT

%%
/* TODO: Your rules here. */

/* Example:

*/
STARTPOINT:CompUnit
{
    gt->root = node("STARTPOINT", 1, $1);

}
CompUnit: CompUnit GlobalDecl
{
    $$ = node("CompUnit",  2  , $1, $2);
}
| GlobalDecl
{
    $$ = node("CompUnit", 1, $1);
}



GlobalDecl: ConstDecl 
{
    $$ = node("GlobalDecl", 1, $1);
}
| VarDecl
{
    $$ = node("GlobalDecl",  1, $1);
}
| FuncDef
{
    $$ = node("GlobalDecl", 1, $1);
}

ConstDecl: CONST INT VarDefList SEMICOLON
{
    $$ = node("ConstDecl", 4, $1, $2, $3, $4);
}
| CONST FLOAT VarDefList SEMICOLON
{
    $$ = node("ConstDecl", 4, $1, $2, $3, $4);
}
 
VarDef: Ident ArrayExpList
{
    $$ = node("VarDef", 2, $1, $2);
}
| Ident ArrayExpList ASSIGN InitVal
{
    $$ = node("VarDef", 4, $1, $2, $3, $4);
} 

VarDecl: INT VarDefList SEMICOLON
{
    $$ = node("VarDecl", 3, $1, $2, $3);
}
| FLOAT VarDefList SEMICOLON
{
    $$ = node("VarDecl", 3, $1, $2, $3);
}

VarDefList:VarDefList COMMA VarDef
{
    $$ = node("VarDefList", 3, $1, $2, $3);
}
| VarDef
{
    $$ = node("VarDefList", 1, $1);
}




ArrayExpList:  ArrayExpList LBRACKET Exp RBRACKET 
{
    $$ = node("ArrayExpList", 4, $1, $2, $3, $4);
}
|   
{
    $$ = node("ArrayExpList",  0);
}
 

InitVal: Exp
{
    $$ = node("InitVal", 1, $1);
}
 
| LBRACE InitValList RBRACE
{
    $$ = node("InitVal", 3, $1, $2, $3);
} 
 

InitValList: InitValList  COMMA  InitVal
{
    $$ = node("InitValList", 3, $1, $2, $3);
}
| InitVal
{
    $$ = node("InitValList", 1, $1);
}
|
{
    $$ = node("InitValList", 0);
}

FuncDef:   INT Ident LPAREN FuncFParams RPAREN Block
{
    $$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);
}
|  FLOAT Ident LPAREN FuncFParams RPAREN Block
{
    $$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);
}
| VOID Ident LPAREN FuncFParams RPAREN Block
{
    $$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);
}

 
FuncFParams: FuncFParams COMMA FuncFParam 
{
    $$ = node("FuncFParams", 3, $1, $2, $3);
}
| FuncFParam
{
    $$ = node("FuncFParams", 1, $1);
}
|
{
    $$ = node("FuncFParams", 0);
}

FuncFParam: INT Ident
{
    $$ = node("FuncFParam", 2, $1, $2);
}
| FLOAT Ident
{
    $$ = node("FuncFParam", 2, $1, $2);
}
| INT Ident   ArrayParamList 
{
    $$ = node("FuncFParam",  3, $1, $2, $3);
}
| FLOAT Ident   ArrayParamList 
{
    $$ = node("FuncFParam",  3, $1, $2, $3);
}

ArrayParamList:ArrayParamList LBRACKET Exp RBRACKET{
    $$ = node("ArrayParamList", 3, $1, $2, $3);
  }
  | LBRACKET Exp RBRACKET{
    $$ = node("ArrayParamList", 3, $1, $2, $3);
  }
  | LBRACKET RBRACKET{
    $$ = node("ArrayParamList", 2, $1, $2);
  }

Block: LBRACE BlockItemList RBRACE
{
    $$ = node("Block", 3, $1, $2, $3);
}

BlockItemList: BlockItemList  BlockItem 
{
    $$ = node("BlockItemList", 2, $1, $2);
}
|
{
    $$ = node("BlockItemList", 0);
}

BlockItem: ConstDecl
{
    $$ = node("BlockItem", 1, $1);
}
| VarDecl
{
    $$ = node("BlockItem", 1, $1);

}
| Stmt
{
    $$ = node("BlockItem", 1, $1);
}

Stmt: LVal ASSIGN Exp SEMICOLON
{
    $$ = node("Stmt", 4, $1, $2, $3, $4);
}
| Exp SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| SEMICOLON
{
    $$ = node("Stmt", 1, $1);
}
| Block
{
    $$ = node("Stmt", 1, $1);
}
| IF LPAREN Cond RPAREN Stmt
{
    $$ = node("Stmt", 5, $1, $2, $3, $4, $5);
}
| IF LPAREN Cond RPAREN Stmt ELSE Stmt
{
    $$ = node("Stmt", 7, $1, $2, $3, $4, $5, $6, $7);
}
| WHILE LPAREN Cond RPAREN Stmt
{
    $$ = node("Stmt", 5, $1, $2, $3, $4, $5);
}
| BREAK SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| CONTINUE SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| RETURN SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| RETURN Exp SEMICOLON
{
    $$ = node("Stmt", 3, $1, $2, $3);
}

Exp: AddExp
{
    $$ = node("Exp", 1, $1);
}

Cond : LOrExp
{
    $$ = node("Cond", 1, $1);
}

LVal : Ident ArrayExpList
{
    $$ = node("LVal", 2, $1, $2);
}

PrimaryExp: LPAREN Exp RPAREN
{
    $$ = node("PrimaryExp", 3, $1, $2, $3);
}
| LVal
{
    $$ = node("PrimaryExp", 1, $1);
}
| IntConst
{
    $$ = node("PrimaryExp", 1, $1);
}
|FloatConst
{
    $$ = node("PrimaryExp", 1, $1);
}

UnaryExp: PrimaryExp
{
    $$ = node("UnaryExp",1, $1);
}
| Ident LPAREN FuncRParams RPAREN
{
    $$ = node("UnaryExp",4, $1, $2, $3, $4);
}
| Ident LPAREN RPAREN
{
    $$ = node("UnaryExp",3, $1, $2, $3);
}
| UnaryOp UnaryExp
{
    $$ = node("UnaryExp",2, $1, $2);
}

UnaryOp: ADD
{
    $$ = node("UnaryOp",1, $1);
}
| SUB
{
    $$ = node("UnaryOp",1, $1);
}
| EXC
{
    $$ = node("UnaryOp",1, $1);
}

ComExp : COMMA Exp ComExp
{
    $$ = node("ComExp",3, $1, $2, $3);
}
|
{
    $$ = node("ComExp",0);
}

FuncRParams : Exp ComExp
{
    $$ = node("FuncRParams",2, $1, $2);
}

MulExp: UnaryExp
{
    $$ = node("MulExp",1, $1);
}
| MulExp MUL UnaryExp
{
    $$ = node("MulExp",3, $1, $2, $3);
}
| MulExp DIV UnaryExp
{
    $$ = node("MulExp",3, $1, $2, $3);
}
| MulExp PER UnaryExp
{
    $$ = node("MulExp",3, $1, $2, $3);
}

AddExp: MulExp
{
    $$ = node("AddExp", 1, $1);
}
| AddExp ADD MulExp
{
    $$ = node("AddExp",3, $1, $2, $3);
}
| AddExp SUB MulExp
{
    $$ = node("AddExp",3, $1, $2, $3);
}

RelExp: AddExp
{
    $$ = node("RelExp",1, $1);
}
| RelExp LT AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}
| RelExp GT AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}
| RelExp LTE AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}
| RelExp GTE AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}

EqExp: RelExp
{
    $$ = node("EqExp",1, $1);
}
|EqExp EQ RelExp
{
    $$ = node("EqExp",3, $1, $2, $3);   
}
|EqExp NEQ RelExp
{
    $$ = node("EqExp",3, $1, $2, $3);
}

LAndExp:  EqExp
{
    $$ = node("LAndExp",1, $1);
}
| LAndExp AND EqExp
{
    $$ = node("LAndExp",3, $1, $2, $3); 
}

LOrExp:  LAndExp
{
    $$ = node("LOrExp",1, $1);
}
| LOrExp OR LAndExp
{
    $$ = node("LOrExp",3, $1, $2, $3); 
}
 
%%

/// The error reporting function.
void yyerror(const char * s)
{
    // TO STUDENTS: This is just an example.
    // You can customize it as you like.
    fprintf(stderr, "error at line %d column %d: %s\n", lines, pos_start, s);
}

/// Parse input from file `input_path`, and prints the parsing results
/// to stdout.  If input_path is NULL, read from stdin.
///
/// This function initializes essential states before running yyparse().
syntax_tree *parse(const char *input_path)
{
    if (input_path != NULL) {
        if (!(yyin = fopen(input_path, "r"))) {
            fprintf(stderr, "[ERR] Open input file %s failed.\n", input_path);
            exit(1);
        }
    } else {
        yyin = stdin;
    }

    lines = pos_start = pos_end = 1;
    gt = new_syntax_tree();
    yyrestart(yyin);
    yyparse();
    return gt;
}

/// A helper function to quickly construct a tree node.
///
/// e.g. $$ = node("program", 1, $1);
syntax_tree_node *node(const char *name, int children_num, ...)
{
    syntax_tree_node *p = new_syntax_tree_node(name);
    syntax_tree_node *child;
    if (children_num == 0) {
        child = new_syntax_tree_node("epsilon");
        syntax_tree_add_child(p, child);
    } else {
        va_list ap;
        va_start(ap, children_num);
        for (int i = 0; i < children_num; ++i) {
            child = va_arg(ap, syntax_tree_node *);
            syntax_tree_add_child(p, child);
        }
        va_end(ap);
    }
    return p;
}
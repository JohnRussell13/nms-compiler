%{
    #include <stdio.h>
    #include "defs.h"
    
    int yyparse(void);
    int yylex(void);
    int yyerror(char *s);
    extern int yylineno;
%}

%union {
    int i;
    char *s;
}

%token _IF
%token _ELSE
%token _SWITCH
%token _BREAK
%token _CONTINUE
%token _RETURN
%token _WHILE
%token _DO
%token _FOR

%token _DEF
%token _CONST

%token <i> _TYPE

%token _LPAREN
%token _RPAREN
%token _LSQBRACK
%token _RSQBRACK
%token _LBRACKET
%token _RBRACKET
%token _SEMICOLON
%token _COMMA
%token _COLON
%token _ASSIGN

%token <i> _AROP
%token <i> _RELOP

%token <s> _ID

%token <s> _INT_NUMBER
%token <s> _UINT_NUMBER

%nonassoc ONLY_IF   /* NOT ALWAYS; JUST IN THE CASE THAT THERE IS NO ELSE (HENCE NO _ - ONLY_IF IS NOT A TOKEN) */
%nonassoc _ELSE

%start program

%%

program
    : function_list
    ;
function_list
    : function
    | function_list function
    ;
function
    : type _ID _LPAREN parameter _RPAREN body
    ;
type
    : _TYPE
    ;
parameter
    : /* empty */
    | type _ID
    ;
body
    : _LBRACKET variable_list statement_list _RBRACKET
    ;
variable_list
    : /* empty */
    | variable_list variable
    ;
variable
    : type _ID _SEMICOLON
    ;
statement_list
    : /* empty */
    | statement_list statement
    ;
statement
    : compound_statement
    | assignment_statement
    | if_statement
    | return_statement
    ;
compound_statement
    : _LBRACKET statement_list _RBRACKET
    ;
assignment_statement
    : _ID _ASSIGN num_exp _SEMICOLON
    ;
num_exp
    : exp
    | num_exp _AROP exp
    ;
exp
    : literal
    | _ID
    | function_call
    | _LPAREN num_exp _RPAREN
    ;
literal
    : _INT_NUMBER
    | _UINT_NUMBER
    ;
function_call
    : _ID _LPAREN argument _RPAREN
    ;
argument
    : /* empty */
    | num_exp
    ;
if_statement
    : if_part %prec ONLY_IF
    | if_part _ELSE statement
    ;
if_part
    : _IF _LPAREN rel_exp _RPAREN statement
    ;
rel_exp
    : num_exp _RELOP num_exp
    ;
return_statement
    : _RETURN num_exp _SEMICOLON
    ;

%%

int yyerror(char *s){
    fprintf(stderr, "\nline %d: ERROR: %s", yylineno, s);
    return 0;
}

int main(){
    return yyparse();
}
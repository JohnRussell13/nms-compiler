%{
    #include <stdio.h>
    #include "defs.h"

    int yyparse(void);
    int yylex(void);
    int yyerror(char *s);
    extern int yylineno;
%}

%token _TYPE

%start program

%%

program
    : _TYPE {printf("A");}
    ;
%%

int yyerror(char *s){
    fprintf(stderr, "\nline %d: ERROR: %s", yylineno, s);
    return 0;
}

int main(){
    return yyparse();
}
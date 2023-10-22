%{
    #include <ctype.h>
    #include <stdio.h>
    int yyparse(void);
    int yylex(void);
    int yyerror(char *s);
%}

%token NUMBER
%token PLUS
%token MINUS
%token NEWLINE

%start program

%%

program
    : e NEWLINE
    ;
e
    : e PLUS NUMBER
    | e MINUS NUMBER
    | NUMBER
    ;

%%

int yyerror(char *s){
    fprintf(stderr, "\nline %d: ERROR: %s", 69, s);
    return 0;
}

int main(){
    return yyparse();
}
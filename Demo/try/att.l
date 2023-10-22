%option noyywrap yylineno
%{

    #include "try.tab.h"

    enum tokens {   _TYPE = 1 };

    char * token_strings [] = { "NONE", "_TYPE" };
                                
%}

%%

[ \t\n]+    { /* skip */ }

"int"       { return _TYPE; }
.           { printf("line %d: LEXICAL ERROR on char %c\n", yylineno, *yytext); }

%%
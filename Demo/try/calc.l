%{
    #include "calc.tab.h"
%}

%%

[ \t]+
[0-9]+  { yylval = atoi(yytext); return NUMBER; }
"+"     { return PLUS; }
"-"     { return MINUS; }
\n      { return NEWLINE; }
.       { printf("Unknown character %c\n", *yytext); }

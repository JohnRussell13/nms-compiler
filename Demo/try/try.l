%option noyywrap
%{
%}
%%
[ \t]+  {printf(" ");}
%%
int main(){
    yylex();
    return 0;
}
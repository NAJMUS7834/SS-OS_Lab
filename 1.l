%{
int operator=0,operand=0;
%}
%%
[\+\-\*\/\%] {++operator;printf("%s is a operator ",yytext);}
[a-zA-Z]+ {++operand;printf("%s is operand",yytext);}
[0-9]+ {++operand;printf("%s is operand",yytext);}
. ;
%%
int main()
{
printf("enter arithmtic expression:\n");
yylex();
if(operand==operator+1)
printf("valid expression\n");
else
printf("invalid expression\n");
return 0;
}
int yywrap()
{
return -1;
}

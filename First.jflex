


%%
%class First
%unicode
%standalone
%line
%column
digit = [0-9]
number = [1-9][0-9]+
decimal = [0-9]*.[0-9]+
smallLetter = [a-z]+
capitalLetter = [A-Z]+
string =  [[A-Z]+ | [a-z]+ | [0-9]*[0-9]+ | [0-9]*.[0-9]+]

%%
{string} {System.out.printf("This %s is a String on Line number %d Column Number %d\n\n", yytext(), yyline + 1, yycolumn);} 
{decimal} {System.out.printf("Decimal Number %s, Line Number %d, Column Number %d\n\n", yytext(), yyline + 1, yycolumn);}
{digit} {System.out.printf("DIGIT %s, Line Number %d , Column Number %d\n\n", yytext(), yyline + 1, yycolumn);}
{number} {System.out.printf("Number %s, Line Number %d , Column Number %d\n\n", yytext(), yyline + 1, yycolumn);}
{smallLetter} {System.out.printf("Small Letters %s, Line Number %d , Column Number %d\n\n", yytext(), yyline + 1, yycolumn);}
{capitalLetter} {System.out.printf("Capital Letters %s, Line Number %d , Column Number %d\n\n", yytext(), yyline + 1, yycolumn);}



. {}
\n {}


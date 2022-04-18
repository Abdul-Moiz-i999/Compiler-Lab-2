%%
%class Task1
%unicode
%standalone
%line
%column

smallD = [\d] // Take integers
bigD = [\D] // Take anything except number
smallS = [\s] // Take spaces col 0 issue too
bigS = [\S] // Take non spaces
smallW = [\w] // Takes a string
bigW = [\W] // Takes special characters
verticalTab = [\v]  //  \v detects vertical tab
tab = [\t] // \t detects tab

coupleOfZero = .+[00]+.


%%

//{smallW} {System.out.printf("%s at %d Line and %d column\n", yytext(), yyline + 1, yycolumn + 1);}
//{verticalTab} {System.out.printf("%s at %d Line and %d column\n", yytext(), yyline + 1, yycolumn + 1);}
{coupleOfZero} {System.out.printf("%s at %d Line and %d column\n", yytext(), yyline + 1, yycolumn + 1);}
// {smallS} {System.out.printf("%s at %d Line and %d column\n", yytext(), yyline + 1, yycolumn);}
//{bigS} {System.out.printf("%s att %d Line and %d column\n", yytext(), yyline + 1, yycolumn);}
. {}




%%
%class myClass
%unicode
%standalone
%line
%column

double_comments = [//.[a-zA-Z0-9_]]+
multi_comments = [\/\* [a-zA-Z0-9_]+ \*\/]+

start = [\^]
end = [\$]

%%
//{double_comments} { System.out.printf(" found dble [%s] at line no: %d and column no: %d", yytext(), yyline, yycolumn); }
{start} { System.out.printf(" found start dble %s at line no: %d and column no: %d\n", yytext(), yyline, yycolumn); }
{end} { System.out.printf(" found end dble %s at line no: %d and column no: %d\n", yytext(), yyline, yycolumn); }
//{multi_comments} { System.out.printf(" found [%s] at line no: %d and column no: %d\n\n", yytext(), yyline, yycolumn); }
//{multi2} { System.out.printf(" foundd [%s] at line no: %d and column no: %d\n\n", yytext(), yyline + 1, yycolumn); }
. {}
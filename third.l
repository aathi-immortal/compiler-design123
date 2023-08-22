%{
	#include<stdio.h>
	#include "yaac.tab.h"	
%}

%%
[0-9]+  {yylval=atoi(yytext);return NUMBER;}
"+"		{return '+';}
"-"		{return '-';}
"*"		{return '*';}
"("		{return '(';}
")"		{return ')';}
"/"		{return '/';}
.
%%
int yywrap()
{
	return 1;
	
}





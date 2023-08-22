%{
#include <stdio.h>
extern int yylex();
void yyerror(const char *s);

%}

%token NUMBER
%left '+' '-'
%left '*' '/'

%%

expression: NUMBER  { printf("Parsed: %d\n", $1); }
          | expression '+' expression
          | expression '-' expression
          | expression '*' expression
          | expression '/' expression
          | '(' expression ')'
          ;

%%

int yylex(); // Declare the lexer function

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    if(yyparse()==0)
    {
    printf("valid");
	}
	else
	{
		printf("not ");
}
    return 0;
}


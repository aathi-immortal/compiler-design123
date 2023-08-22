%{
#include <stdio.h>
%}


%%
[0-9]+      { printf("NUMBER: %s\n", yytext); }
[ \t\n]     ; // Ignore whitespace and newlines
[-+*/=;,()<>]+                { printf("OPERATOR: %s\n", yytext); }
auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|inline|int|long|register|restrict|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while   { printf("KEYWORD: %s\n", yytext); }
"//"(.*)     { printf("SINGLE-LINE COMMENT: %s\n", yytext); }
"/*"([^*]|"*"[^/])*"*/"   { printf("MULTI-LINE COMMENT: %s\n", yytext); }
\".*\"                      { printf("STRING: %s\n", yytext); }
\{                          { printf("TERMINAL: %s\n", yytext); }
\}                          { printf("TERMINAL: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
.           { printf("INVALID CHARACTER: %s\n", yytext); }
%%
int main(int argc, char *argv[]) {
    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror("Error opening file");
        return 1;
    }
    yyin = file;
    yylex();
    fclose(file);
   
    return 0;
}
int yywrap() {
    // Return 0 to indicate there is more input to process
    return 0;
}

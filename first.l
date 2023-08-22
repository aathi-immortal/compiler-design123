%{
#include <stdio.h>
#include <string.h>

// Define a simple symbol table entry structure
typedef struct {
    char name[50];
    int id;
} SymbolTableEntry;

SymbolTableEntry symbolTable[100]; // Symbol table array
int symbolTableSize = 0;           // Current size of the symbol table

int getSymbolId(char *name) {
    for (int i = 0; i < symbolTableSize; ++i) {
        if (strcmp(symbolTable[i].name, name) == 0) {
            return symbolTable[i].id;
        }
    }
    // Identifier not found in the symbol table, add it
    strcpy(symbolTable[symbolTableSize].name, name);
    symbolTable[symbolTableSize].id = symbolTableSize + 1;
    symbolTableSize++;
    return symbolTableSize;
}
%}


DIGIT       [0-9]
LETTER      [a-zA-Z]
IDENTIFIER  {LETTER}({LETTER}|{DIGIT})*
CONSTANT    {DIGIT}+
OPERATOR    [+*\/-=]
SYMBOLS     [\[\]{}()]
STRING       \"[^\"]*\"
%option noyywrap

%%
"."				{printf("dot:%s\n",yytext);}
","				{printf("comma:%s\n",yytext);}
";"             {printf("terminator:%s\n",yytext);}
"#"				{printf("preprocessor:%s\n",yytext);}
"include"       {printf("keyword:%s\n",yytext);}
{IDENTIFIER}    { int id = getSymbolId(yytext); printf("Identifier: %s (ID: %d)\n", yytext, id); }
{CONSTANT}      { printf("Constant: %s\n", yytext); }
{OPERATOR}      { printf("Operator: %s\n", yytext); }
{SYMBOLS}		{printf("symbols:  %s\n",yytext);}
{STRING}			{printf("string:  %s\n",yytext);}	
.               { /* Ignore all other characters */ }
%%

int main(int arg,char* argv[]) {
	FILE *inputFile = fopen(argv[1],"r");
	if(inputFile == NULL){
		printf("file not found");
		return 1;
	}
	yyin = inputFile;
    yylex();
    return 0;
}


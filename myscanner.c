#include <stdio.h>
#include "myscanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *text[]={NULL,"IDENTIFIER","COLON","SEMICOLON","COMMA","CONST","ANEA","FUNC","SWITCH","CASE","DEFAULT","BREAK","CONTINUE","IF","ELSE","RETURN","DO","FOR", "WHILE","PRINT","SCAN","ADD","SUBTRACT","DIVIDE","COMMENT","MULTIPLY","GREATEREQ","LESSEQ","EQ","NOTEQ","ADD_EQ","SUB_EQ","INC","DEC","MULT_EQ","DIV_EQ","LSHIFT","RSHIFT","LOGIC_AND","LOGIC_OR","ASSGN","LBRACE","RBRACE","LROUND","RROUND","LBRACKET","RBRACKET","GREATER","LESS","BOOLEAN","INTEGER","DOUBLE","STRING","EXIT"};

int main(void)
{
    int ntoken = yylex();
    while (ntoken)
    {
        printf("yytext: %-15s\ttoken: %-15s\tlineno: %d\n", yytext, text[ntoken], yylineno);
        ntoken = yylex();
    }
    return 0;
    
}
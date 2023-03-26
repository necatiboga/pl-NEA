%{
    #include <stdio.h>
    #include "myscanner.h"
%}

%%
    /* RESERVED WORDS */
":"                     return COLON;
";"                     return SEMICOLON;
","                     return COMMA;
"const"                 return CONST; 
"var"                   return ANEA; 
"func"                  return FUNC; 
"switch"                return SWITCH;
"case"                  return CASE;
"default"               return DEFAULT;
"break"                 return BREAK;
"continue"              return CONTINUE;
"if  "                  return IF; 
"else "                 return ELSE; 
"return"                return RETURN;
"do"                    return DO;
"for"                   return FOR;
"while"                 return WHILE; 
"printf"                return PRINT;
"scanf"                 return SCAN;

    /* OPERATORS */
"+"                     return ADD;
"-"                     return SUBTRACT;
"/"                     return DIVIDE;
"//".*                  return COMMENT;
"*"                     return MULTIPLY;
">="                    return GREATEREQ;
"<="                    return LESSEQ;
"=="                    return EQ;
"!="                    return NOTEQ;
"+="                    return ADD_EQ;
"-="                    return SUB_EQ;
"++"                    return INC;
"--"                    return DEC;
"*="                    return MULT_EQ;
"/="                    return DIV_EQ;
"<<"                    return LSHIFT;
">>"                    return RSHIFT;
"&&"                    return LOGIC_AND;
"||"                    return LOGIC_OR;
"="                     return ASSGN;
"{"                     return LBRACE;
"}"                     return RBRACE;
"("                     return LROUND;
")"                     return RROUND;
"["                     return LBRACKET;
"]"                     return RBRACKET;
true|false              return BOOLEAN;
"exit"                  return EXIT;
"\n"                    {yylineno++;}    

    /* Types */
[a-zA-Z][_a-zA-Z0-9]*	return IDENTIFIER;
[-]?[0-9]+              return INTEGER;
[-]?[0-9]+\.[0-9]+      return DOUBLE;
\"[^\"]*\"              return STRING;
    
[ \t\n]                 ;
.                       printf("Error!Undefined Token");

%%
int yywrap(void) {return 1;}

extern int yylex();
extern int yylineno;
extern char* yytext;
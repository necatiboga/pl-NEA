%{
#include <stdio.h>

void yyerror(const char *s);

int symbols[52];

int symbolVal(char symbol);
void updateSymbolVal(char symbol, int val);
%}

%token CONST ANEA FUNC SWITCH CASE DEFAULT BREAK CONTINUE
%token IF ELSE RETURN DO FOR WHILE PRINT SCAN
%token ADD SUBTRACT DIVIDE COMMENT MULTIPLY GREATEREQ LESSEQ EQ NOTEQ ADD_EQ
%token SUB_EQ INC DEC MULT_EQ DIV_EQ LSHIFT RSHIFT LOGIC_AND LOGIC_OR ASSGN
%token LBRACE RBRACE LROUND RROUND LBRACKET RBRACKET GREATER LESS BOOLEAN EXIT
%token IDENTIFIER INTEGER DOUBLE STRING

%%

program:
    | program statement
    ;

statement:
    'CONST' declaration
    | 'ANEA' declaration
    | 'FUNC' IDENTIFIER '(' ')' '{' statements '}'
    | 'SWITCH' '(' IDENTIFIER ')' '{' cases '}'
    | 'IF' '(' expression ')' '{' statements '}' 'ELSE' '{' statements '}'
    | 'DO' '{' statements '}' 'WHILE' '(' expression ')'
    | 'FOR' '(' 'ANEA' IDENTIFIER '=' INTEGER ';' IDENTIFIER '<' INTEGER ';' IDENTIFIER INC ')' '{' statements '}'
    | 'WHILE' '(' expression ')' '{' statements '}'
    | 'PRINT' '(' STRING ')'
    | 'SCAN' '(' IDENTIFIER ')'
    ;

declaration:
    IDENTIFIER '=' expression ';'
    ;

statements:
    statement
    | statements statement
    ;

expression:
    INTEGER
    | DOUBLE
    | IDENTIFIER
    | '(' expression ')'
    | expression '+' expression
    | expression '-' expression
    | expression '*' expression
    | expression '/' expression
    ;

cases:
    'CASE' INTEGER ':' statements 'BREAK' ';'
    | 'DEFAULT' ':' statements 'BREAK' ';'
    | cases 'CASE' INTEGER ':' statements 'BREAK' ';'
    | cases 'DEFAULT' ':' statements 'BREAK' ';'
    ;

%%
void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}

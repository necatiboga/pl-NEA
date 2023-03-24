%%
true|false              printf("BOOLEAN\n");
;                       printf("SEMICOLON\n");
const                   printf("CONSTANT "); 
var                     printf("VARIABLE "); 
func                    printf("FUNCTION "); 
if                      printf("IF "); 
else                    printf("ELSE "); 
elseif                  printf("ELSEIF ");
while                   printf("WHILE "); 
print                   printf("PRINT ");
[+\-*/=><!%]            printf("OPERATOR ");
&&                      printf("OPERATOR ");
\|\|                    printf("OPERATOR ");
-?[0-9]+                printf("INTEGER ");
-?[0-9]+\.[0-9]+        printf("FLOAT "); 
\"[^\"]*\"              printf("STRING ");
[a-zA-Z][a-zA-Z0-9]*     printf("IDENTIFIER ");
[ \t\n]+                printf("SPACE ");
\/\/[^\n]*              /* Ignore single-line comments */ 
\/\*([^*]|\*[^\/])*\*\/  /* Ignore multi-line comments */ 
\;                      printf("SEMICOLON ");
\,                      printf("COMMA "); 
\(                      printf("LPAREN ");
\)                      printf("RPAREN ");
\{                      printf("LBRACE ");
\}                      printf("RBRACE ");
\]                      printf("RBRACKET ");
\[                      printf("LBRACKET ");
.                       printf("Syntax Error!");
%%


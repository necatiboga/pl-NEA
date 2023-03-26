# Programming Language ANEA  
Group Members: Necati Boğa, Ali Ege Özceylan, Arjin Ateş, Enes Önal

## Syntax
program      ::= statement*  
statement    ::= variable_declaration | constant_declaration | function_declaration  
&emsp; &emsp; &emsp;&emsp;&emsp;  | assignment_statement | function_call | conditional_statement | loop_statement   
&emsp; &emsp; &emsp;&emsp;&emsp;  | input_statement | output_statement | exit_statement | COMMENT

variable_declaration ::= "var" IDENTIFIER ":" type ";"  
constant_declaration ::= "const" IDENTIFIER ":" type "=" expression ";"  
function_declaration ::= "func" IDENTIFIER "(" parameter_list ")" ":" type "{" statement* "}"  
parameter_list        ::= parameter ("," parameter)*  
parameter             ::= IDENTIFIER ":" type  
  
assignment_statement ::= variable "=" expression ";"  
function_call         ::= IDENTIFIER "(" argument_list ")" ";"  
argument_list         ::= expression ("," expression)*  
  
conditional_statement ::= "if" expression ":" statement ("else" statement)?  
loop_statement         ::= while_loop | for_loop | do_while_loop  
while_loop             ::= "while" expression ":" statement  
for_loop               ::= "for" IDENTIFIER "in" expression ".." expression ":" statement  
do_while_loop          ::= "do" statement "while" expression ";"  

input_statement   ::= "scanf" "(" STRING "," "&" IDENTIFIER ")" ";"  
output_statement  ::= "printf" "(" STRING ("," expression)* ")" ";"  
exit_statement    ::= "exit" "(" expression? ")" ";"  
  
expression       ::= term (add_op term)*  
term             ::= factor (mult_op factor)*  
factor           ::= INTEGER | DOUBLE | BOOLEAN | STRING | IDENTIFIER  
&emsp; &emsp; &emsp;| "(" expression ")" | "-" factor | "!" factor | "++" factor | "--" factor
add_op           ::= "+" | "-"  
mult_op          ::= "*" | "/" | "%"  
rel_op           ::= "<" | ">" | "<=" | ">=" | "==" | "!="  
bool_op          ::= "&&" | "||"  
  
type             ::= "int" | "double" | "bool" | "string"  
  
IDENTIFIER       ::= [a-zA-Z][_a-zA-Z0-9]*  
INTEGER          ::= [-]?[0-9]+  
DOUBLE           ::= [-]?[0-9]+\.[0-9]+  
STRING           ::= \"[^\"]*\"  
  
## Explanations about the language  
The language appears to be a C-like imperative programming language with the following capabilities:  
  
-Defining constants and variables using the const and var keywords respectively.  
-Defining functions using the func keyword, with optional parameters enclosed in parentheses.  
-Conditional statements using the if and else keywords.  
-Looping constructs such as while, do-while, and for loops.  
-Switch-case statements using the switch, case, and default keywords.  
-Input/output operations using the printf and scanf keywords.  
-Commenting using the // syntax.  
-Arithmetic operations such as addition, subtraction, multiplication, and division.  
-Comparison operators such as less than, greater than, equal to, and not equal to.  
-Logical operators such as && and ||.  
-Assignment operators such as =, +=, -=, *=, and /=.  
-Increment and decrement operators using ++ and --.  
-Support for integers, floating point numbers, strings, and boolean values.  
-Support for arrays using square brackets.  
-The ability to define and call functions.  
  
Overall, the language appears to be designed for writing general-purpose programs that can perform arithmetic operations, make decisions based on conditions, and repeat a set of instructions while a condition is met. It also provides basic input/output operations and the ability to define and call functions to modularize code...
  
- You can run your program by running the makefile and giving it to myprog as input:  
  
make
./myprog < example.anea

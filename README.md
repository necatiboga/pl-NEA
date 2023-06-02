# Yacc (myparser.y) File

This yacc file defines the grammar of a specific language and creates a compiler or interpreter using this grammar.

## Setup

To use this file, follow the steps below:

1. Make sure Yacc (GNU Bison) compiler is installed.
2. Download the `myparser.y` file to your computer.

## Compilation

To compile the Yacc file, use the following command:
yacc -d myparser.y


This command will generate `y.tab.c` and `y.tab.h` files.

## Building the Compiler

To build the compiler, follow these steps:

1. Compile the `lex.yy.c` file generated by Lex (Flex).
2. Compile the `y.tab.c` file generated by Yacc.
3. Merge the compiled files:

gcc lex.yy.c y.tab.c -o mycompiler

4. Run the compiler:

## Usage

When the compiler is running, it processes an input file and writes the results to the output. You need to specify the name of the input file on the command line. Here is an example usage:

./mycompiler input.txt


## Supported Language Features

This yacc file supports the following language features:

- Constant declarations (`CONST`)
- Variable declarations (`ANEA`)
- Function declarations (`FUNC`)
- Conditional statements (`IF`, `ELSE`)
- Loops (`WHILE`, `DO`, `FOR`)
- Keywords (`SWITCH`, `CASE`, `DEFAULT`, `BREAK`, `CONTINUE`, `RETURN`)
- Input/Output operations (`PRINT`, `SCAN`)

## Sample Program

Below is a simple example program using the supported language features:

```c
FUNC main() {
    ANEA x = 5;
    ANEA y = 10;
    ANEA z;

    z = x + y;
    PRINT("Total: ", z);
    RETURN 0;
}

This program assigns the sum of x and y to z variable and prints the result to the screen.

## Features and Functionality

The lex and yacc files provided in this project implement the following features:

- Lexical analysis: Tokenizing the input source code into meaningful tokens.
- Syntax analysis: Parsing the tokenized input according to the specified grammar rules.
- Error handling: Providing meaningful error messages for syntax errors and other issues.
- Language-specific constructs: Supporting constants, variables, functions, control flow statements, loops, I/O operations, and more.

## Sample Code

Below is an example of code that can be processed by the compiler:

```pl
FUNC main() {
 CONST PI = 3.14159;
 ANEA radius = 5;
 ANEA area;

 area = PI * radius * radius;
 PRINT("The area of the circle is: ", area);

 RETURN 0;
}

### Contributing
Contributions to this project are welcome! If you have any improvements, bug fixes, or new features to suggest, please feel free to submit a pull request
MUHAMMED ENES ÖNAL, ALİ EGE OZCEYLAN, NECATİ BOGA, ARJIN ATES














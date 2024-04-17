%language "c++"
%define api.parser.class {ParserBase}

%{
using namespace std;
#include <iostream>
#include <fstream>
%}
%code requires
{
class Parser;
};

%code 
{
   #include "Parser.h"
   #define yylex(x) driver->lex(x)
   
   extern Parser *parser;
}

%parse-param {Parser *driver} 
%start jvalue

%token ASSIGN
%token AND
%token OR
%token EQ
%token NEQ
%token LESS
%token LEQ
%token GRE
%token GREQ
%token PLUS
%token MINUS
%token AST
%token SLASH
%token ARROW
%token NEG
%token BNEG
%token CALL
%token MUT

%%
   
 
%%
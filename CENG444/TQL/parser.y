%language "c++"
%define api.parser.class {ParserBase}

%{
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
%start statements

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
%token BNEG
%token LP
%token RP
%token LSB
%token RSB
%token LCB
%token RCB
%token SCOL
%token COMMA
%token NUM
%token ID
%token COL_ELEMENT
%token COMMENT
%token LET
%token STR
%token APPEND
%token AT
%token IF
%token ELSE
%token WHILE
%token TRUE
%token FALSE

%%
   statement : let | 
               append {parser->handle_append();} |
               if {parser->handle_if();} |
               if-else {parser->handle_ifelse();} | 
               while {parser->handle_while();} | 
               compound {parser->handle_compound();} |
               eval {parser->handle_eval();} |
               COMMENT |
               error {parser->log_error();};

   single-statement : let | 
                     append {parser->handle_append();} |
                     if-else {parser->handle_ifelse();} | 
                     if {parser->handle_if();} | 
                     while {parser->handle_while();} | 
                     eval {parser->handle_eval();} |
                     error {parser->log_error();}; 

   statements : statement statements | ;

   expr : ID ASSIGN expr | and-expr;
   and-expr: and-expr AND or-expr | or-expr;
   or-expr: or-expr OR eq-expr | eq-expr;
   eq-expr: eq-expr EQ neq-expr | neq-expr;
   neq-expr: neq-expr NEQ less-expr | less-expr;
   less-expr: less-expr LESS leq-expr | leq-expr;
   leq-expr: leq-expr LEQ gre-expr | gre-expr;
   gre-expr: gre-expr GRE greq-expr | greq-expr;
   greq-expr: greq-expr GREQ plus-expr | plus-expr;
   plus-expr: plus-expr PLUS minus-expr | minus-expr;
   minus-expr: minus-expr MINUS mul-expr | mul-expr;
   mul-expr: mul-expr AST div-expr | div-expr;

   div-expr: div-expr SLASH arrow-expr {parser->handle_select();} | 
             arrow-expr;

   arrow-expr: arrow-expr ARROW neg-expr {parser->handle_materialization();} | 
               neg-expr;

   neg-expr: MINUS neg-expr | bneg-expr;
   bneg-expr: BNEG bneg-expr | mut-expr;
   mut-expr: mut-expr mutation-literal {parser->handle_mutation();} | 
             paranthesis-expr;
   paranthesis-expr: LP expr RP | operand;

   expr-list : expr COMMA expr-list | eval ;
   param-list : expr COMMA param-list | expr | ;

   operand : ID | literals | func {parser->handle_func();};
   literals : table-literal {parser->handle_table();} | 
              string-literal | boolean-literal | NUM;

   eval : expr SCOL ;
   
   func : ID LP param-list RP ;
   let : LET declaration-list;
   
   single-declaration : ID ASSIGN eval { parser->handle_declaration(); };
   declaration: ID ASSIGN expr { parser->handle_declaration(); };
   declaration-list : declaration COMMA declaration-list | single-declaration;

   col-list : col-list COMMA COL_ELEMENT | COL_ELEMENT;
   mutation-literal : LSB col-list RSB; 

   string-literal : STR ;
   table-literal : AT LSB string-literal RSB ;
   boolean-literal: TRUE | FALSE;
   
   append : APPEND expr-list ;
   compound : LCB statements RCB;
   if : IF LP expr RP LCB statements RCB | IF LP expr RP single-statement;
   if-else : if ELSE LCB statements RCB | if ELSE single-statement;
   while : WHILE LP expr RP LCB statements RCB | WHILE LP expr RP single-statement;
 
%%
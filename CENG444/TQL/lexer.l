%option noyywrap
%option yylineno
%{
#include "parser.tab.hh"

#undef YY_DECL
#define YY_DECL int Lexer::lex(yy::ParserBase::value_type *lval)

#include "Lexer.h"
#include "Parser.h"

extern Parser *parser;
%}

TYPE ("string"|"number"|"boolean")

NDIGIT [1-9] 
DIGIT [0-9]
EXP ("e"|"E")("+"|"-")?{NDIGIT}{DIGIT}*
NUMW (0|{NDIGIT}{DIGIT}*)("."{DIGIT}*{NDIGIT})?{EXP}?
NUMF "."{DIGIT}+{EXP}?
NUM ({NUMW}|{NUMF})

POS_INT {NDIGIT}{DIGIT}*

WSP [ \t\r]*

EN [a-zA-Z]
LETTER {EN}|"_"
ID {LETTER}({LETTER}|{DIGIT})*
DID "$"{ID}
MID "$"{POS_INT}"."{ID}
COL_ID {TYPE}" "{ID}

COL_ELEMENT ({COL_ID}|{MID})

COMMENT "//".*\n

HEXDIGIT       [0-9a-fA-F]
STRCHAR        [\x23-\xff]|[\x20-\x21]
CHARASHEX     "\\x"{HEXDIGIT}{HEXDIGIT}?
ESCAPED        "\\n"|"\\r"|"\\"t|"\\\\"|"\\\""
STR           \"({STRCHAR}|{CHARASHEX}|{ESCAPED})*\"


%%
"="     { return yy::ParserBase::token::ASSIGN; }
"&&"    { return yy::ParserBase::token::AND; }
"||"    { return yy::ParserBase::token::OR; }
"=="    { return yy::ParserBase::token::EQ; }
"!="    { return yy::ParserBase::token::NEQ; }
"<"     { return yy::ParserBase::token::LESS; }
"<="    { return yy::ParserBase::token::LEQ; }
">"     { return yy::ParserBase::token::GRE; }
">="    { return yy::ParserBase::token::GREQ; }
"+"     { return yy::ParserBase::token::PLUS; }
"-"     { return yy::ParserBase::token::MINUS; }
"*"     { return yy::ParserBase::token::AST; }
"/"     { return yy::ParserBase::token::SLASH; }
"->"    { return yy::ParserBase::token::ARROW; }
"!"     { return yy::ParserBase::token::BNEG; }
"("     { return yy::ParserBase::token::LP; }
")"     { return yy::ParserBase::token::RP; }
"["     { return yy::ParserBase::token::LSB; }
"]"     { return yy::ParserBase::token::RSB; }
"{"     { return yy::ParserBase::token::LCB; }
"}"     { return yy::ParserBase::token::RCB; }
";"     { return yy::ParserBase::token::SCOL; }
","     { return yy::ParserBase::token::COMMA; }
"@"     { return yy::ParserBase::token::AT; }

"while" { return yy::ParserBase::token::WHILE; }
"if"    { return yy::ParserBase::token::IF; }
"else"  { return yy::ParserBase::token::ELSE; }
"let"   { return yy::ParserBase::token::LET; }
"append" { return yy::ParserBase::token::APPEND; }
"true"  { return yy::ParserBase::token::TRUE; }
"false" { return yy::ParserBase::token::FALSE; }

{ID}    { return yy::ParserBase::token::ID; }
{DID}    { return yy::ParserBase::token::ID; }
{COL_ELEMENT} {return yy::ParserBase::token::COL_ELEMENT; }
{COMMENT} { return yy::ParserBase::token::COMMENT; }
{STR}   { return yy::ParserBase::token::STR; }
{NUM}   { return yy::ParserBase::token::NUM; }
{WSP} 	

\n      {parser->new_line();}
.       {return yy::ParserBase::token::YYUNDEF;}
%%
#include <iostream>
#include <fstream>

#include "parser.tab.hh"
#include "FlexLexer.h"
#include "Lexer.h"

Lexer::Lexer()
{
   
}

int yyFlexLexer::yylex()
{
   return -1;
}

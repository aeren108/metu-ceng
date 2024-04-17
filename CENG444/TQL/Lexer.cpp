using namespace std;

#include <iostream>
#include <fstream>
#include "sample02.tab.hh"
#include "FlexLexer.h"
#include "MyFlexLexer.h"

Lexer::Lexer()
{
   
}

int yyFlexLexer::yylex()
{
   return -1;
}

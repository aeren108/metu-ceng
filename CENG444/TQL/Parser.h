#ifndef MYPARSER_H_
#define MYPARSER_H_

#include "Lexer.h"
#include "parser.tab.hh"

class Parser
{
   yy::ParserBase *base;
   Lexer *lexer;

public:
   Parser();
   ~Parser();

   void parse(yy::ParserBase *base, ifstream *is);
   int lex(yy::ParserBase::value_type *lval);

};


#endif

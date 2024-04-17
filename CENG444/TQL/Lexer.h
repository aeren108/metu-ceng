#ifndef MYFLEXLEXER_H_
#define MYFLEXLEXER_H_

#include "FlexLexer.h"
#include "Parser.h"

class Lexer : public yyFlexLexer
{
public:
   Lexer();
   int lex(yy::MyParserBase::semantic_type *const lval);
};

#endif

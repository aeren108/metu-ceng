#ifndef MYFLEXLEXER_H_
#define MYFLEXLEXER_H_

class Lexer : public yyFlexLexer
{
public:
   Lexer();
   int lex(yy::ParserBase::semantic_type *const lval);
};

#endif

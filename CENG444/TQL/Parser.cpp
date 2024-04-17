using namespace std;

#include <iostream>
#include <fstream>
#include <string.h>

#include "parser.tab.hh"
#include "MyParser.h"
#include "FlexLexer.h"
#include "MyFlexLexer.h"

Parser::Parser()
{
   parseError=false;
   base=nullptr;
   lexer=nullptr;
}

Parser::~Parser()
{
   // Clean-up
   delete lexer;
   delete base;
}

int Parser::lex(yy::MyParserBase::value_type *lval)
{
   return lexer->lex(lval);
}

void Parser::parse(yy::MyParserBase *base, ifstream *is)
{
   this->base=base;
   lexer=new Lexer();
   lexer->switch_streams(is);
   base->parse();
}

int Parser::getId()
{
   return yy::MyParserBase::token::ID;
}

int Parser::getStr()
{
   return yy::MyParserBase::token::STR;
}

int Parser::getNumber()
{
   return yy::MyParserBase::token::NUM;
}

void Parser::nameFromId()
{
}

void Parser::nameFromStr()
{
}

void Parser::setValue(JValueType t)
{
   // Mock action using recognized value type
   switch (t)
   {
      case JValueType::Str:
         break;
      case JValueType::Num:
         break;
      case JValueType::Dict:
         break;
      case JValueType::Arr:
         break;
   }
}

void Parser::storeMember()
{
   // Mock action to store recognized member
}

void Parser::storeArrElement()
{
   // Mock action to store array element
}

void Parser::setParseError()
{
   parseError=true;
}

bool Parser::getParseError()
{
   return parseError;
}

extern Parser *parser;

void yy::MyParserBase::error(const std::string &msg)
{
   parser->setParseError();
   cout << "Not recognized!" << endl;
}

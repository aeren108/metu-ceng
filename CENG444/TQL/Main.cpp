using namespace std;

#include <iostream>
#include <fstream>

#include "parser.tab.hh"
#include "Parser.h"
#include "FlexLexer.h"
#include "Lexer.h"

Parser *parser;

int main(int argc, char **argv)
{
   std::ifstream is("sample02.txt");

   if (is.is_open())
   {
      parser = new Parser();
      yy::MyParserBase *base=new yy::MyParserBase(parser);

      parser->parse(base, &is);

      is.close();

      if (!parser->getParseError())
         std::cout << "Recognized JSON-Like source." << std::endl;

      delete parser;
   }

   return 0;
}

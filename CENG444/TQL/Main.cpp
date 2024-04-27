#include <iostream>
#include <fstream>

#include "parser.tab.hh"
#include "Parser.h"
#include "FlexLexer.h"
#include "Lexer.h"

Parser *parser;

int main(int argc, char **argv)
{
   if (argc != 2)
   {
      std::cout << "Specify the input file.\nExample usage: ./parser file.tql" << std::endl;
      return -1;
   }

   std::ifstream is(argv[1]);

   if (is.is_open())
   {
      parser = new Parser();
      yy::ParserBase *base = new yy::ParserBase(parser);

      parser->parse(base, &is);

      is.close();
      parser->log_report();
      delete parser;
   }

   return 0;
}

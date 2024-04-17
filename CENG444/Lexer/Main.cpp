#include <iostream>
#include <fstream>

#include "FlexLexer.h"
#include "Lexer.h"
#include "Logging.h"

Lexer *lexer = new Lexer();

int main(int argc, char **argv)
{
   if (argc < 2)
   {
      std::cout << "Specify the input file." << std::endl;
      return 0;
   }

   std::ifstream is(argv[1]);
   InitLogger();

   if (is.is_open())
   {
      lexer->switch_streams(&is);
      while (lexer->yylex() != 0);

      is.close();
   }

   lexer->GetSequences();
   lexer->WriteOutputs();
   CloseLogger();
   return 0;
}
#ifndef MYPARSER_H_
#define MYPARSER_H_

#include <fstream>

namespace yy
{
   class ParserBase;
};

class Lexer;

class Parser
{
   yy::ParserBase *base;
   Lexer *lexer;

public:
   Parser();
   ~Parser();

   void parse(yy::ParserBase *base, std::ifstream *is);
   int lex(yy::ParserBase::value_type *lval);

   void handle_declaration();
   void handle_eval();
   void handle_while();
   void handle_if();
   void handle_ifelse();
   void handle_append();
   void handle_compound();
   void handle_table();
   void handle_func();
   void handle_select();
   void handle_mutation();
   void handle_materialization();
   void new_line();
   void log_error();
   void log_report();

   int lineno = 1;
   
private:
   int declarations = 0;
   int evaluations = 0;
   int while_stmts = 0;
   int if_stmts = 0;
   int ifelse_stmts = 0;
   int append_stmts = 0;
   int compound_stmts = 0;
   int table_literals = 0;
   int functions = 0;
   int selects = 0;
   int mutations = 0;
   int materializations = 0;

   int last_err_lineno = 0;
   bool error_exists = false;

   std::ofstream outfile;
   
};

#endif

#include <iostream>
#include <fstream>
#include <string.h>

#include "parser.tab.hh"
#include "Parser.h"
#include "FlexLexer.h"
#include "Lexer.h"

Parser::Parser()
{
   base = nullptr;
   lexer = nullptr;

   outfile.open("project01syn.txt", std::ios::trunc);
}

Parser::~Parser()
{
   // Clean-up
   delete lexer;
   delete base;
}

int Parser::lex(yy::ParserBase::value_type *lval)
{
   return lexer->lex(lval);
}

void Parser::parse(yy::ParserBase *base, std::ifstream *is)
{
   this->base = base;
   lexer = new Lexer();
   lexer->switch_streams(is);
   base->parse();
}

void Parser::handle_declaration() 
{
   declarations++;
}

void Parser::handle_eval()
{
   evaluations++;
}

void Parser::handle_while()
{
   while_stmts++;
}

void Parser::handle_if()
{
   if_stmts++;
}

void Parser::handle_ifelse()
{
   ifelse_stmts++;
}

void Parser::handle_append()
{
   append_stmts++;
}

void Parser::handle_compound()
{
   compound_stmts++;
}

void Parser::handle_table()
{
   table_literals++;
}

void Parser::handle_func()
{
   functions++;
}

void Parser::handle_select()
{
   selects++;
}

void Parser::handle_mutation()
{
   mutations++;
}

void Parser::handle_materialization()
{
   materializations++;
}

void Parser::new_line()
{
   lineno++;
}

void Parser::log_error()
{
   error_exists = true;

   if (lineno != last_err_lineno) 
   {
      outfile << "Line " << lineno << ": Syntax error." << std::endl;
      last_err_lineno = lineno;
   }
   
}

void Parser::log_report()
{
   if (error_exists)
      return;

   outfile << declarations << std::endl;
   outfile << evaluations << std::endl;
   outfile << while_stmts << std::endl;
   outfile << if_stmts << std::endl;
   outfile << ifelse_stmts << std::endl;
   outfile << append_stmts << std::endl;
   outfile << compound_stmts << std::endl;
   outfile << table_literals << std::endl;
   outfile << functions << std::endl;
   outfile << selects << std::endl;
   outfile << mutations << std::endl;
   outfile << materializations << std::endl;
}

extern Parser *parser;

void yy::ParserBase::error(const std::string &msg)
{
   std::cout << msg << std::endl;
   std::cout << "Not recognized!" << std::endl;
}
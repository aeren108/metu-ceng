CC=g++

all: lex.yy.cc parser.tab.cc Parser.cpp Lexer.cpp Main.cpp
	$(CC) -std=c++11 lex.yy.cc parser.tab.cc Parser.cpp Lexer.cpp Main.cpp -o parser

lex.yy.cc: lexer.l
	flex -+ lexer.l

parser.tab.cc: parser.y
	bison -d parser.y

clean:
	rm -f lex.yy.cc parser.tab.cc parser.tab.hh stack.hh
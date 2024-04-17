
lexer: lex.yy.cc Lexer.cpp Main.cpp Logging.cpp Error.cpp
	g++ *.cpp lex.yy.cc -o lexer

lex.yy.cc: lexer.l
	flex -+ lexer.l

clean:
	rm -f lex.yy.cc
	rm -f lexer
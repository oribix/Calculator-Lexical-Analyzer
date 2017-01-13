all: calc.lex
	flex calc.lex && gcc lex.yy.c -lfl

run:
	flex calc.lex && gcc lex.yy.c -lfl && ./a.out


clean:
	rm -f ./a.out


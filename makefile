all:
	flex -o src/lex.yy.c src/lex.l && gcc src/lex.yy.c

run:
	./a.out

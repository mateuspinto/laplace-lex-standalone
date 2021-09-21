all:
	flex -o src/lex.yy.c src/lex.l && gcc src/lex.yy.c

run:
	./a.out

run0:
	./a.out < input/0.lapl

run1:
	./a.out < input/1.lapl

run2:
	./a.out < input/2.lapl

run3:
	./a.out < input/3.lapl

run4:
	./a.out < input/4.lapl

run5:
	./a.out < input/5.lapl

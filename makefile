all:
	flex -o src/lex.yy.c src/lex.l && gcc src/lex.yy.c

run:
	./a.out

run0:
	./a.out < input/0.txt

run1:
	./a.out < input/1.txt

run2:
	./a.out < input/2.txt

run3:
	./a.out < input/3.txt

run4:
	./a.out < input/4.txt

run5:
	./a.out < input/5.txt

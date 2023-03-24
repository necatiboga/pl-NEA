
myprog: nea.l
	lex nea.l
	gcc -o myprog lex.yy.c -ll

clean:
	rm myprog lex.yy.c

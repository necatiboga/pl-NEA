
myprog: anea.l
	lex anea.l
	gcc myscanner.c lex.yy.c -o myprog

clean:
	rm myprog lex.yy.c

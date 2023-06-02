
myprog: anea.l
	lex anea.l
	yacc -d myparser.y
	gcc lex.yy.c y.tab.c -o myprog 

clean:
	rm myprog lex.yy.c
	rm myprog y.tab.c

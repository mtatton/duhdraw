# These are the production settings
CC=gcc -O2 -s -Wall
STRIP=strip
LIBS=-lncurses

# I use these to debug
#CC=g++ -g -O0
#STRIP=ls
#LIBS=-lncurses_g
#LIBS=-lncurses

all:	duhdraw

duhdraw:	cleandd	
	$(CC) -o duhdraw duhdraw.c $(LIBS) 
	$(STRIP) duhdraw

cleandd:	
	rm -f duhdraw
 
clean:	cleandd
	rm -f *~
	rm -f *.swp
	rm -f .*.swp

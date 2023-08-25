CC = gcc
CFLAGS = -W -Wall -g -Wextra -Werror
LDFLAGS = 
 
SRC = $(wildcard *.c)
OBJS = $(SRC:.c=.o)
AOUT = prog
 
all : $(AOUT) 
 
prog : $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean :
	@rm *.o
cleaner : clean
	@rm $(AOUT)


archive: 
	tar zcvf DIVRIOTIS_Constantin.tar.gz *.c prog

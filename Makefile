CC=gcc
CFLAGS= -Wall -c -g3
LDFLAGS= -lfl

LEX=flex

OUT=bf2c

.PHONY: all clean mrproper

all: $(OUT)

bf2c: lexer.o
	$(CC) $^ -o $@ $(LDFLAGS)

%.c: %.l
	$(LEX) -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	$(RM) lexer.o lexer.c

mrproper: clean
	$(RM) $(OUT)

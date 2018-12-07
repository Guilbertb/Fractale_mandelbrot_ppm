CC=gcc
CFLAGS=-W -Wall
LDFLAGS=
EXEC=mandelbrot
SRC= mandelbrot.c
OBJ= $(SRC:.c=.o)

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@.exe $^ $(LDFLAGS)

%.o: %.c
	$(CC) -std=c99 -o $@ -c $< $(CFLAGS)

clean:
	rm -rf *.o
    
mrproper: clean
	rm -rf $(EXEC).exe
    
run:
	@./$(EXEC).exe

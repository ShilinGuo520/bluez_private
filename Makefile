
INC = ./inc

SRC = hci.o
SRC +=bluetooth.o

CFLAGS = -I$(INC)

bluez:$(SRC)
	gcc $(CFLAGS) -o $@ $^

.c.o:
	gcc $(CFLAGS) -c $<

clean:
	rm *.o bluez

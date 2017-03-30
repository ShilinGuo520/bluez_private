#编译工具
CC = gcc


#头文件
INC = ./inc

#源文件
SRC = hci.o
SRC += bluetooth.o
SRC += hcitool.o
SRC += oui.o
#链接选项
LCFLAGS = -I$(INC) -o
#编译选项
CFLAGS = -I$(INC) -c

bluez:$(SRC)
	$(CC) $(LCFLAGS) $@ $^

.c.o:
	$(CC) $(CFLAGS) $<

clean:
	rm *.o bluez

#编译工具
CC = gcc


#头文件
INC = ./inc

#源文件
SRC = src/hci.c
SRC += src/bluetooth.c
SRC += src/hcitool.c
SRC += src/oui.c

#链接选项
LCFLAGS = -I$(INC) -o

#编译选项
CFLAGS = -I$(INC) -c

bluez:$(SRC)
	$(CC) $(LCFLAGS) $@ $^

.c.o:
	$(CC) $(CFLAGS) $<

clean:
	rm bluez

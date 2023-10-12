# the compiler: gcc for C program
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
TARGET = types

all: clean $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

clean:
	$(RM) $(TARGET)

test: all
	chmod u+x cleanup-files.sh
	chmod u+x create-files.sh
	chmod u+x test.sh
	./cleanup-files.sh
	./create-files.sh
	./test.sh
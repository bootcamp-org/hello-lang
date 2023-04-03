exec = hello.exe
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

install:
	make
	cp ./hello.exe C:\Users\Mateus\AppData\Local\Microsoft\WindowsApps

clean:
	- rm *.exe
	- rm *.o
	- rm *.out
	- rm src/*.o

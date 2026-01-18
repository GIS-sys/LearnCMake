# Правило по умолчанию - скомпилировать файл "main"
all: main

# Правило для компиляции файла "main"
main:
	g++ -Wall -Wextra -std=c++11 -I../include -c ../src/calculator.cpp -o calculator.o
	g++ -Wall -Wextra -std=c++11 -I../include -c ../src/logger.cpp -o logger.o
	g++ -Wall -Wextra -std=c++11 -I../include -c ../main.cpp -o main.o
	g++ calculator.o logger.o main.o -o main

# Правило для очистки скомпилированных файлов
clean:
	rm -f calculator.o logger.o main.o main

# Флаг, чтобы make не путал команды clean, all с файлами
.PHONY: clean all


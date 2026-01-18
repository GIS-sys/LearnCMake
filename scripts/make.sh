mkdir -p build_gcc
cd build_gcc

# Компиляция каждого объектного файла
g++ -c ../src/calculator.cpp -I ../include/ -o calculator.o
g++ -c ../src/logger.cpp -I ../include/ -o logger.o
g++ -c ../main.cpp -Iinclude -o main.o

# Линковка всех объектных файлов в исполняемый файл
g++ calculator.o logger.o main.o -o main

# Запуск
./main


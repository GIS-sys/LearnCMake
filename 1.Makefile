# Определяем переменные
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
TARGET = main
OBJS = calculator.o logger.o main.o

# Правило по умолчанию - скомпилировать конкретный файл-результат
all: $(TARGET)

# Правило линковки для этого файла-результата:
#   ожидать в качестве зависимости все файлы $(OBJS)
#   в качестве команды скомпилировать все файлы в единый $(TARGET)
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# Правила для отдельных .o файлов:
#   ожидать в качестве зависимости .cpp и требуемые хедеры
#   в качестве команды скомпилировать эти файлы в .o
calculator.o: ../src/calculator.cpp ../include/calculator.h
	$(CXX) $(CXXFLAGS) -I../include -c ../src/calculator.cpp -o calculator.o

logger.o: ../src/logger.cpp ../include/logger.h
	$(CXX) $(CXXFLAGS) -I../include -c ../src/logger.cpp -o logger.o

main.o: ../main.cpp ../include/calculator.h ../include/logger.h
	$(CXX) $(CXXFLAGS) -I../include -c ../main.cpp -o main.o

# Правило для очистки скомпилированных файлов
clean:
	rm -f $(OBJS) $(TARGET)

# Флаг, чтобы make не путал команды clean, all с файлами
.PHONY: clean all


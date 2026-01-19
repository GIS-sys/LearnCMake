# Определяем переменные
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
TARGET = main
# Автоматический поиск .cpp файлов чтобы переименовать их в .obj
SRC_DIR = ../src
SRCS = $(wildcard $(SRC_DIR)/*.cpp) ../main.cpp
OBJS_1 = $(SRCS:.cpp=.o)
OBJS_2 = $(subst ../,,${OBJS_1})
OBJS = $(subst src/,,${OBJS_2})


# Правило по умолчанию - скомпилировать конкретный файл-результат
all: $(TARGET)

# Правило линковки для этого файла-результата:
#   ожидать в качестве зависимости все файлы $(OBJS)
#   в качестве команды скомпилировать ($(CXX)) все файлы-зависимости ($^) в единый файл (название правила, $@)
$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

# Автоматическое правило для компиляции .cpp в .o:
#   ожидать в качестве зависимости соответствующий .cpp
#   в качестве команды скомпилировать файл .cpp (=первую зависимость, $<) в .o (название правила, $@)
%.o: ../src/%.cpp
	$(CXX) $(CXXFLAGS) -I../include -c $< -o $@
%.o: ../%.cpp
	$(CXX) $(CXXFLAGS) -I../include -c $< -o $@

# Опционально: добавить зависимости для header файлов для конкретных правил .o -> .cpp
## main.o: ../include/calculator.h ../include/logger.h
## calculator.o: ../include/calculator.h
## logger.o: ../include/logger.h

# Правило для очистки скомпилированных файлов
clean:
	rm -f $(OBJS) $(TARGET)

# Флаг, чтобы make не путал команды clean, all с файлами
.PHONY: clean all


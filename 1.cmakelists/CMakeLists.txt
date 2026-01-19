# Минимальная требуемая версия CMake
cmake_minimum_required(VERSION 3.10)

# Название проекта и язык
project(MyProject CXX)

# Установка стандарта C++
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Включение директории с заголовками
include_directories(../include)

# Добавление исполняемого файла
add_executable(main
    ../main.cpp
    ../src/calculator.cpp
    ../src/logger.cpp
)


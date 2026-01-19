# Название проекта и язык
project(MyProject CXX)

# Включение директории с заголовками
include_directories(../include)

# Добавление исполняемого файла
add_executable(main
    ../main.cpp
    ../src/calculator.cpp
    ../src/logger.cpp
)


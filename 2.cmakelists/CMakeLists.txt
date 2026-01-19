# Минимальная требуемая версия CMake
cmake_minimum_required(VERSION 3.10)

# Название проекта
project(MyProject
    VERSION 1.0.0
    LANGUAGES CXX
)

# Установка стандарта C++
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Добавление поддиректории с библиотеками
add_subdirectory(../src ${CMAKE_CURRENT_BINARY_DIR}/src)

# Создание исполняемого файла
add_executable(main ../main.cpp)

# Линковка с библиотеками
target_link_libraries(main PRIVATE calculator logger)

# Включение заголовков
target_include_directories(main PUBLIC ../include)


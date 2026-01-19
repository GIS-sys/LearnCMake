# Создание статической библиотеки Calculator
add_library(calculator STATIC
    calculator.cpp
)
target_include_directories(calculator PUBLIC ../include)

# Создание статической библиотеки Logger
add_library(logger STATIC
    logger.cpp
)
target_include_directories(logger PUBLIC ../include)


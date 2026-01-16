#include "include/calculator.h"
#include "include/logger.h"
#include <iostream>

int main() {
    Logger logger;
    Calculator calc;
    
    logger.log("Starting calculator program");
    
    int a = 10, b = 5;
    
    std::cout << a << " + " << b << " = " << calc.add(a, b) << std::endl;
    std::cout << a << " * " << b << " = " << calc.multiply(a, b) << std::endl;
    
    logger.log("Program finished successfully");
    
    return 0;
}


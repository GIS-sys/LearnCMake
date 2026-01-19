# Description

Simple repository for showing how compilation works using:
- plane gcc
- make
- cmake

I tried to make them increasingly more complex, from the simplest examples to more complex ones. The project is intentionally kept very simple to focus on commands/Makefile/CMakeLists.txt instead of c++ aspects

# How to run

After clonning this repository, simply navigate to this root folder and run one of the scripts:

- `./scripts/gcc.sh`

  This script compiles the project directly using a series of gcc commands. You can look them up in this same script, `./scripts/gcc.sh`

- `./scripts/make.sh [0-2]`

  The argument should be one of the numbers: 0, 1, 2

  This script compiles the project using a Makefile. The argument is an index of the Makefile used: 0.Makefile, 1.Makefile or 2.Makefile. The compilation will trigger several times, to showcase different aspects of this process

- `./scripts/cmake.sh [0-2]`

  The argument should be one of the numbers: 0, 1, 2

  This script compiles the project using a CMakeLists.txt file. The argument is an index of the CMakeLists.txt used: 0.cmakelists/CMakeLists.txt, 1.cmakelists/CMakeLists.txt or 2.cmakelists/CMakeLists.txt. The compilation will trigger 2 times, basically being the same, but being compiled either by using make directly, or using cmake build command


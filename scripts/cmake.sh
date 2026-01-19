echo "Usage:"
echo "  scripts/cmake.sh <0-2 : index of CMakeLists to use>"

IND=$1
CMAKELISTS_NAME="${IND}.cmakelists/"
if [ ! -d $CMAKELISTS_NAME ]; then
    echo "Folder $CMAKELISTS_NAME not found!"
    exit 1
fi
echo "Using $CMAKELISTS_NAME"
echo ""

# Создать временную директорию для компиляции
mkdir -p build_cmake_${IND}
cd build_cmake_${IND}
CMAKELISTS_PATH="../${CMAKELISTS_NAME}"



cleanup() {
    rm -r CMakeCache.txt  CMakeFiles  cmake_install.cmake  Makefile  main
}



cleanup

echo -e "\nКомпиляция через cmake..."
cmake $CMAKELISTS_PATH
cmake --build .
echo -e "\nЗапуск файла..."
./main



cleanup

echo -e "\nКомпиляция через cmake + make..."
cmake $CMAKELISTS_PATH
make
echo -e "\nЗапуск файла..."
./main


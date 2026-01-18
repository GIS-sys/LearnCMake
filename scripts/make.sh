echo "Usage:"
echo "  scripts/make.sh <index of Makefile to use>"

IND=$1
MAKEFILE_NAME="${IND}.Makefile"
if [ ! -f $MAKEFILE_NAME ]; then
    echo "File $MAKEFILE_NAME not found!"
    exit 1
fi
echo "Using $MAKEFILE_NAME"
echo ""

# Создать временную директорию для компиляции
mkdir -p build_make_${IND}
cd build_make_${IND}
MAKEFILE_PATH="../${MAKEFILE_NAME}"


echo -e "\nКомпиляция с файлом make..."
make -f $MAKEFILE_PATH clean
make -f $MAKEFILE_PATH all

echo -e "\nЗапуск файла..."
./main

echo -e "\nПример, что будет, если не удалять файлы компиляции..."
make -f $MAKEFILE_PATH all

echo -e "\nПример, что будет, если удалить только один промежуточный файл компиляции (logger.o)..."
rm ./logger.o
make -f $MAKEFILE_PATH all

echo -e "\nПример, что будет, если удалить только конечный файл компиляции (main)..."
rm ./main.o
make -f $MAKEFILE_PATH all


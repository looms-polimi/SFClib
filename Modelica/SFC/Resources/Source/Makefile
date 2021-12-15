
SRC := sfc.cpp
OBJ := sfc.o
LIB := libsfc.so

all:
	g++ -O2 -std=c++17 -fPIC -c $(SRC)
	g++ -O2 -std=c++17 -fPIC -shared -o $(LIB) $(OBJ)

clean:
	rm $(OBJ) $(LIB)

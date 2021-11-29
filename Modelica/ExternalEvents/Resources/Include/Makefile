
SRC := semaphore.cpp
OBJ := semaphore.o
LIB := libsemaphore.so

all:
	g++ -O2 -fPIC -c $(SRC)
	g++ -O2 -fPIC -shared -o $(LIB) $(OBJ)

clean:
	rm $(OBJ) $(LIB)

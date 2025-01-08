# C++ Compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17

# Define directories
SRC_DIR = src
OBJ_DIR = obj

# Default target
all: main
	./main

# Create executable
main: $(OBJ_DIR)/main.o
	$(CXX) $(OBJ_DIR)/main.o -o main

# Compile object file
$(OBJ_DIR)/main.o: $(SRC_DIR)/main.cpp
	$(CXX) -c $(SRC_DIR)/main.cpp -o $(OBJ_DIR)/main.o

# Clean build files
clean:
	rm -f main $(OBJ_DIR)/*.o
	rm -f main

# Executable, source, and object files
TARGET	 := matmul
SRC_DIR	 := src
OBJ_DIR	 := obj
SRC 	 := $(wildcard $(SRC_DIR)/*.cpp)
OBJ		 := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

# Compiler, preprocessor, compiler flags, linker flags, and library flags
CXX		 := g++
CPPFLAGS :=
CFLAGS 	 := -std=c++11 -g -Wall -Wextra -pedantic -march=native -O3 
LDFLAGS  := -Wl,--no-as-needed
LDLIBS	 := -larmadillo -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl

.PHONY: all clean

# Rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

clean:
		rm -f $(OBJ) $(TARGET) *.out vgcore.*

# Dependencies

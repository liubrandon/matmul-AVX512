# Executable, source, and object files
TARGET	 := matmul
SRC_DIR	 := src
OBJ_DIR	 := obj
ASM_DIR	 := asm
LIB_DIR  := lib
SRC 	 := $(wildcard $(SRC_DIR)/*.cpp)
OBJ		 := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)
ASM      := $(SRC:$(SRC_DIR)/%.cpp=$(ASM_DIR)/%.s)

# Compiler, preprocessor, compiler flags, linker flags, and library flags
CXX		 := g++
CPPFLAGS :=														
CFLAGS 	 := -I/home/brandon/matmul/lib/vcl-add-on/complex -I/home/brandon/matmul/lib/vcl-2.01.02 -std=c++17 -g -Wall -Wextra -pedantic -march=native -O3 -mavx512f -mavx2 
LDFLAGS  := -Wl,--no-as-needed
LDLIBS	 := -larmadillo -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl 

.PHONY: assembly all clean

# Rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) -DMKL_ILP64 -m64 $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) -DMKL_ILP64 -m64 $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

# doesn't work yet
assembly: $(ASM)

$(ASM_DIR)/%.s: $(SRC_DIR)/%.cpp | $(ASM_DIR)
	$(CXX) -Wa,-adhln -g $< > $@

$(ASM_DIR):
	mkdir $@

clean:
		rm -f $(OBJ) $(TARGET) *.out vgcore.* $(ASM)

# Dependencies

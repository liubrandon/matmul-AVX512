# Executable, source, and object files
TARGET	 := matmul
SRC_DIR	 := src
OBJ_DIR	 := obj
ASM_DIR	 := asm
SRC 	 := $(wildcard $(SRC_DIR)/*.cpp)
OBJ		 := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)
ASM      := $(SRC:$(SRC_DIR)/%.cpp=$(ASM_DIR)/%.s)

# Compiler, preprocessor, compiler flags, linker flags, and library flags
CXX		 := g++
CPPFLAGS :=															#  not sure what these do
CFLAGS 	 := -std=c++11 -g -Wall -Wextra -pedantic -march=native -O3 #-mavx512f -mavx2 
LDFLAGS  := -Wl,--no-as-needed
LDLIBS	 := -larmadillo -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl

.PHONY: assembly all clean

# Rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(ASMFLAGS) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) $(ASMFLAGS) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

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

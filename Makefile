# Executable, source, and object files
TARGET	 := matmul
SRC_DIR	 := src
OBJ_DIR	 := obj
LIB_DIR  := lib
SRC 	 := $(wildcard $(SRC_DIR)/*.cpp)
OBJ		 := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)
ASM      := $(SRC:$(SRC_DIR)/%.cpp=$(ASM_DIR)/%.s)

# Compiler, preprocessor, compiler flags, linker flags, and library flags
CXX		 := g++
CPPFLAGS :=		# https://colfaxresearch.com/knl-avx512/#code:vecadd Info on avx flags												
CFLAGS 	 := -I/usr/local/include/volk/build/include/volk -L/usr/local/include/volk/build/lib/ -funroll-loops -I/home/brandon/matmul/lib/vcl-2.01.02 -std=c++17 -march=native -mavx512f -mavx512cd -mavx512bw -mavx512dq -mavx512vl -mavx512ifma -mavx512vbmi -O3# -Wall -Wextra -pedantic # -fopt-info-vec-all
LDFLAGS  := -Wl,--no-as-needed
LDLIBS	 := -larmadillo -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl -l:libvolk.so

.PHONY: all clean run

# Rules
all: clean $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) -O3 $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

clean:
		rm -f $(OBJ) $(TARGET) *.out vgcore.* 

# Dependencies

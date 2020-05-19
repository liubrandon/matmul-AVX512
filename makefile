# Macro definitions
CXXFLAGS = -std=c++11 -w -O3 -march=native -g -larmadillo -Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl -Wall
OBJ = matmul_avx512.o
TARGET = matmul

# Rules
all: $(TARGET)
$(TARGET): $(OBJ)
		$(CXX) -o $@ $(OBJ)
clean:
		rm -f $(OBJ) $(TARGET) *.out vgcore.*

# Dependencies

# Compiler
CXX = g++

# Target executable name
TARGET = main

# Source files
SRCS = main.cpp

# Object files (automatically generated from source files)
OBJS = $(SRCS:.cpp=.o)

# Default target
all: $(TARGET)

# Build the target executable
$(TARGET): $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS)

# Compile source files to object files
%.o: %.cpp
	$(CXX) -c $< -o $@

# Clean up build artifacts
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets (targets that are not files)
.PHONY: all clean

# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra

# Target executable
TARGET = oopd

# Sources and objects
SRCS = student_classes.cpp basicIO.cpp
OBJS = $(SRCS:.cpp=.o)

# Default target
all: $(TARGET)

# Link step
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

# Compile step for .cpp to .o
%.o: %.cpp basicIO.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Run target
run: $(TARGET)
	./$(TARGET)

# Clean target
clean:
	rm -f $(OBJS) $(TARGET)

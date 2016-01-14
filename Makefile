CXX=g++
CFLAGS=-Wall -Wextra -pedantic
CXXFLAGS=-std=c++11


CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/, $(notdir $(CPP_FILES:.cpp=.o)))

all: bin/main.exe

bin/main.exe: $(OBJ_FILES)
	$(CXX) $(CFLAGS) $(CXXFLAGS) -o $@ $^
	
obj/%.o: src/%.cpp
	$(CXX) $(CFLAGS) $(CXXFLAGS) -c -o $@ $<
	
clean_windows:
	del bin\main.exe
	del obj\*.o
	
clean_linux:
	rm bin/main.exe
	rm obj/*.o
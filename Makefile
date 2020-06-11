CXX = g++

CXXFLAGS =  -g3 -O0 -Wall -Werror -std=c++11

EXECUTABLE = application

LDLIBS = `pkg-config --static --libs glfw3` -lGL -lGLU

OBJ = main.o 

$(EXECUTABLE): $(OBJ)
	$(CXX) $(LDLIBS) $(OBJ) -o $(EXECUTABLE)

main.o: src/main.cpp
	$(CXX) -c $(CXXFLAGS) src/main.cpp


.PHONY: clean run

clean:
	rm *.o $(EXECUTABLE)

run: $(EXECUTABLE)
	./$(EXECUTABLE)
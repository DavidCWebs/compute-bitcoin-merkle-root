SOURCES:= $(wildcard *.cpp) $(wildcard *.hpp)
OBJECTS:= $(wildcard *.cpp)
OUT:= bin/main
main: $(SOURCES)
	g++ -W -Wall -std=c++17 -g -fsanitize=address -o $(OUT) $(OBJECTS) -lssl -lcrypto

debug: $(SOURCES)
	g++ -W -Wall -std=c++17 -g -o $(OUT) $(OBJECTS)

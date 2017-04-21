
all: monsterWuerzigDB

SOURCES := block.cc \
           blockFile.cc \
	   dbi.cc

CXXFLAGS := -std=c++11 -Wall -Wextra -pedantic
CPPFLAGS := -MD

OBJECTS := $(SOURCES:%.cc=%.o)

  #replace -Og -g with different flags if needed
monsterWuerzigDB: $(OBJECTS)
	g++ -o $@ $(LDFLAGS) $^


clean:
	-rm $(OBJECTS) monsterWuerzigDB $(OBJECTS:%.o=%.d)


  #silently include generated dependency information
-include ${OBJECTS:%.o=%.d}

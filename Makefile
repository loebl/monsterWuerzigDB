
all: monsterWuerzigDB

SOURCES := block.cc \
           blockFile.cc \
	   dbi.cc

CXXFLAGS := -std=c++11 -Wall -Wextra -pedantic
CPPFLAGS := -MD

OBJECTS := $(SOURCES:%.cc=%.o)

monsterWuerzigDB: $(OBJECTS)


clean:
	-rm $(OBJECTS) monsterWuerzigDB $(OBJECTS:%.o=%.d)


  #silently include generated dependency information
-include ${OBJECTS:%.o=%.d}


all: monsterWuerzigDB

SOURCES := src/block.cc \
           src/blockFile.cc \
	   monsterWuerzigDB.cc

CXXFLAGS := -std=c++11 -Wall -Wextra -pedantic
CPPFLAGS := -MD -Iinclude

OBJECTS := $(SOURCES:%.cc=%.o)

monsterWuerzigDB: $(OBJECTS)


clean:
	-rm $(OBJECTS) monsterWuerzigDB $(OBJECTS:%.o=%.d)


  #silently include generated dependency information
-include ${OBJECTS:%.o=%.d}

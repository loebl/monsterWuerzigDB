all: monsterWuerzigDB

SOURCES := src/block.cc \
           src/blockFile.cc \
           monsterWuerzigDB.cc

CXXFLAGS := -std=c++11 -Wall -Wextra -pedantic
  #-MMD: generate dependency information only for user headers
  #-MP: add phony targets to avoid errors if a header is missing
CPPFLAGS := -MMD -MP -Iinclude
  #required libraries go here
LDLIBS := -lstdc++ -lm
LDFLAGS :=

OBJECTS := $(SOURCES:%.cc=%.o)

  #depend on the objects instead of the sources to compile each single source
  #file into an object file. This makes partial recompiles fast. Otherwise all
  #sources would be compiled in a single #compilation step.
monsterWuerzigDB: $(OBJECTS)

clean:
	-rm $(OBJECTS) monsterWuerzigDB $(OBJECTS:%.o=%.d)


  #include generated dependency information, don't fail if it doesn't exist
-include ${OBJECTS:%.o=%.d}

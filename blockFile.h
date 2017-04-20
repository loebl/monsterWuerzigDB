#include "block.h"

class blockFile {
	
	public:
		blockFile();
		block read(int index);
		int write(block block);
	
	protected:
		void create();
		void open();
		void close();
		void destroy();
		void allocate();
};

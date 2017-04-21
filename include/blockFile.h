#pragma once
//=============Includes==================================
#include "block.h"
#include <fstream>
#include <iostream>
#include <string>

//=======CLASS blockFile=================================
class blockFile
{	
	public:
		blockFile(std::string, std::string);
		block read(int index);
		int write(block block);
	
	protected:
		void create();
		void open();
		void close();
		void destroy();
		void allocate();
	private:
		char *fileName;
		char *filePath;
};
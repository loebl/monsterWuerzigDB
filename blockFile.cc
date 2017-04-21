#include "blockFile.h"

blockFile::blockFile()
{
	create();
}

void blockFile::create()
{
	std::ofstream outfile("monsterWuerzig.db", std::ofstream::binary);
	
	//char* data = new char[4096];
	std::string test = "Test";
	const char *cTest = test.c_str();
	
	outfile.write(cTest, 4096);
	outfile.close();
}

void blockFile::open()
{
	std::ifstream infile ("monsterWuerzig.db", std::ifstream::binary);

	infile.seekg(0, infile.end);
	long size = infile.tellg();
	infile.seekg(0);

	char* buffer = new char[size];

	infile.read(buffer, size);
}

void blockFile::close()
{
	std::ofstream outfile("monsterWuerzig.db", std::ofstream::binary);

	outfile.write(data, 4096);
	outfile.close();	
}

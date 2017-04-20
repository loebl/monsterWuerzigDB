#include <cstdint>
#include <array>

class block {
	public:
		std::array<uint8_t, 4096>& getData();
		void writeData(std::array<uint8_t, 4096>&);
		
	protected:
		int size;
		int number;
};

#include "../src/pal.hpp"
#include <cstdlib>
#include <vector>
#include <string>

using namespace std;

int main (int argc, char **argv) {
    vector< string > vst;

    if (argc > 1) {
        for (unsigned i = 1; i < (unsigned) argc; ++i) {
            string st = argv[i];
            vst.push_back(st);
        }
    } else {
        cerr << "The counters to measure must be passed as an argument!!" << endl;
        return -1;
    }

	int m_id = iPAL::Counters::new_measure (vst);



	float a = 0;

	for (int i = 0; i < 5; ++i) {
		iPAL::Counters::start_measure(m_id);
		a++;
		++a;
		++a;
		iPAL::Counters::stop_measure(m_id);
	}

    iPAL::Counters::print_results(m_id);

    return 0;
}

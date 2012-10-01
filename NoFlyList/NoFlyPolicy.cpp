#include "NoFlyPolicy.h"

#include <string>

using std::string;
using std::vector;
using std::shared_ptr;

class NoFlyPolicy::impl
{
public:
	vector< NoFlyPolicy::type_test > tests;
};

NoFlyPolicy::NoFlyPolicy()
  : pimpl{ new impl{} }
{
	// default black list
	auto noTerrorist = [] (const Person& person) {
			if (person.isTerrorist())
				return NoFlyPolicy::SUSPECT;
			else
				return NoFlyPolicy::UNCERTAIN;
	};

	auto noFrenchLiberal = [] (const Person& person) {
		if (person.getNationality() == Person::FRENCH && person.getPoliticalView() == Person::LIBERAL)
				return NoFlyPolicy::SUSPECT;
			else
				return NoFlyPolicy::UNCERTAIN;
	};

	addTest( noTerrorist );
	addTest( noFrenchLiberal );
}


NoFlyPolicy::~NoFlyPolicy() = default;


void NoFlyPolicy::addTest(type_test test)
{
	pimpl->tests.push_back(test);
}

bool NoFlyPolicy::canFly(const Person& person)
{
	bool canFly = true;
	for (type_test test : pimpl->tests)
	{
		switch (test(person))
		{
		case CLEAR: return true;
		case SUSPECT: canFly = false;
		case UNCERTAIN: /* do nothing */;
		}
	}

	return canFly;
}

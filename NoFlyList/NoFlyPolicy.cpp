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

	addTest( noTerrorist );
}


NoFlyPolicy::~NoFlyPolicy() = default;


void NoFlyPolicy::addTest(type_test test)
{
	pimpl->tests.push_back(test);
}

bool NoFlyPolicy::canFly(const Person& person)
{
	for (type_test test : pimpl->tests)
	{
		if (test(person) == SUSPECT)
			return true;
	}

	if (person.getNationality() == Person::FRENCH && person.getPoliticalView() == Person::LIBERAL)
		return false;

	vector<string> forbidden;
	forbidden.push_back("bomb");
	forbidden.push_back("osama");
	forbidden.push_back("obama");

	auto twitter = person.getTweets();
	for(auto tweet = twitter.begin(); tweet != twitter.end(); ++tweet)
		for(auto f = forbidden.begin(); f != forbidden.end(); ++f)
			if (tweet->find(*f) != string::npos)
				return false;

	return true;
}

#pragma once
#include "Person.h"
#include "Destination.h"

#include <functional>
using std::function;



class NoFlyPolicy
{
public:
	NoFlyPolicy();
	~NoFlyPolicy();

	enum status_t { CLEAR, SUSPECT, UNCERTAIN };
	typedef std::function<status_t(const Person&)> type_test;
	void addTest(type_test test);

	bool canFly(const Person& person);
	Destination terroristDestination() { return Destination("Guantanamo", 0); }

private:
	// Uncopyable class
	NoFlyPolicy(const NoFlyPolicy&);
	NoFlyPolicy& operator=(const NoFlyPolicy&);

	class impl;
	std::unique_ptr<impl> pimpl;
};


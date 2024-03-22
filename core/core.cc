#include "core.h"

#include <iostream>

namespace core {
Core::~Core() {}
void Core::foo() { std::cout << "core::foo\n"; }
} // namespace core

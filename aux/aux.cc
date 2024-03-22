#include "aux.h"
#include <core.h>

#include <iostream>

namespace aux {
Aux::~Aux() {}
void Aux::foo() {
  std::cout << "aux::foo\n";
  core::Core c;
  c.foo();
}
} // namespace aux

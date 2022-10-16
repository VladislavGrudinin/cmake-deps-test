#include <aux.h>
#include <core.h>

#include <iostream>

void aux::do_work() {
  std::cout << "aux::do_work\n";
  core::foo();
}

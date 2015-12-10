#include <iostream>

extern "C" int add(int a, int b);
extern "C" int increase(int a);

int main(int argc, char* argv[]) {

  std::cout << increase(10) << std::endl;

  return 0;
}

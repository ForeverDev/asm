#include <iostream>

extern "C" int compare_strings(const char* c, const char* c2);

int main(int argc, char* argv[]) {

  const char* c = "hello";
  const char* c2 = c;

  std::cout << compare_strings(c, c2) << std::endl;

  return 0;
}

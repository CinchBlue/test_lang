#include <iostream>

/*
struct Character
  -This may eventually differ due to ASCII vs. UTF-8/16/32 encoding.
*/
template <typename T>
struct Character {
  T c;
  unsigned row;
  unsigned column;
};

////////////////////////////////////////////////////////////////////////////////


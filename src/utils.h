#define stop(...) Rf_error(R_NilValue, __VA_ARGS__)
#define MIN(x, y) (((x) < (y)) ? (x) : (y))
void bail(int out);
void raise_error();

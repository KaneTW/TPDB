/*
 * Date: 2014-06-26
 * Author: leike@informatik.uni-freiburg.de
 */

typedef enum {false, true} bool;

extern int __VERIFIER_nondet_int(void);

int main()
{
	int c, x;
    c = 5;
    x = __VERIFIER_nondet_int();
	while (x >= 0) {
		x = x + c;
	}
	return 0;
}

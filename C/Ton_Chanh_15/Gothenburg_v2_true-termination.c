/*
 * Date: 06/07/2015
 * Created by: Ton Chanh Le (chanhle@comp.nus.edu.sg)
 * Adapted from Gothenburg_true-termination.c
 */

extern int __VERIFIER_nondet_int(void);

int main()
{
	int a = __VERIFIER_nondet_int();
	int b = __VERIFIER_nondet_int();
	int x = __VERIFIER_nondet_int();
	int y = __VERIFIER_nondet_int();
	if (a != b + 1 || x >= 0) {
		return 0;
	}
	while (x >= 0 || y >= 0) {
		x = x + a - b - 1;
		y = y + b - a - 1;
	}
	return 0;
}
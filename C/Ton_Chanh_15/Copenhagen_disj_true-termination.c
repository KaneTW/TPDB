/*
 * Date: 06/07/2015
 * Created by: Ton Chanh Le (chanhle@comp.nus.edu.sg)
 * Adapted from Copenhagen_true-termination.c
 */

extern int __VERIFIER_nondet_int(void);

int main()
{
	int x = __VERIFIER_nondet_int();
	int y = __VERIFIER_nondet_int();
	while (x >= 0 || y >= 0) {
		int old_x = x;
		x = y - 1;
		y = old_x - 1;
	}
	return 0;
}
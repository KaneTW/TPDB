/*
 * Date: 06/07/2015
 * Created by: Ton Chanh Le (chanhle@comp.nus.edu.sg)
 * Adapted from Benghazi_true-termination.c
 */

extern int __VERIFIER_nondet_int();

int main()
{
	int d1 = __VERIFIER_nondet_int();
	int d2 = __VERIFIER_nondet_int();
	int x = __VERIFIER_nondet_int();
	while (x >= 0) {
		x = x - d1;
		int d1_old = d1;
		d1 = d2 + 1;
		d2 = d1_old + 1;
	}
	return 0;
}

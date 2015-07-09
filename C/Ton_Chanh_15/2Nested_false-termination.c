/*
 * Date: 06/07/2015
 * Created by: Ton Chanh Le (chanhle@comp.nus.edu.sg)
 * Adapted from the example 2Nested_true-termination.c
 *
 * This program does not terminate when x >= 0 & y >= 0
 */

extern int __VERIFIER_nondet_int();

int main()
{
	int x = __VERIFIER_nondet_int();
	int y = __VERIFIER_nondet_int();
	while (x >= 0) {
		x = x + y;
		y = y + 1;
	}
	return 0;
}

/*
 * Date: 06/07/2015
 * Created by: Ton Chanh Le (chanhle@comp.nus.edu.sg)
 */

extern int __VERIFIER_nondet_int(void);

int main()
{
	int x = __VERIFIER_nondet_int();
	int y = __VERIFIER_nondet_int();
	if (y <= x) {
		return 0;
	}
	while (x >= 0) {
		x = x - y;
	}
	return 0;
}


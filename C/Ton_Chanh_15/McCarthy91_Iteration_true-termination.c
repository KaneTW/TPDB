/*
 * Date: 07/07/2015
 * Created by: Ton Chanh Le (chanhle@comp.nus.edu.sg)
 */

extern int __VERIFIER_nondet_int();

int mc91(int n)
{
  int c = 1;
  while (c > 0) {
    if (n > 100) {
      n = n - 10;
      c = c - 1;
    } else {
      n = n + 11;
      c = c + 1;
    }
  }
  return n;
}

int main() {
  int x = __VERIFIER_nondet_int();
  mc91(x);
}
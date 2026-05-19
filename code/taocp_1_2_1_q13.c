/* Name: the_extended_euclidean_algorithm.c */
/* Purpose: write out the algorithm in taocp */
/* Author: kab@indepthnotes.com */
/* Donate! indepthnotes.com/donate */

#include <stdio.h>

int
main(void)
{
	/* step 1 */
	int a, ap, b, bp, c, d, m1, m2, n1, n2, q, r, t;
	m1 = 1769;
	m2 = 19; /* sqrt 2 part */
	n1 = 551;
	n2 = 12;

	ap = b = 1;
	a = bp = 0;

	c = m1;
	d = n2;

	/* printf("a'     a      b'     b      c      d      q      r\n"); */
	for (;;) {
		/* step 2 */
		q = c / d;
		r = c % d;
		printf("a'm + b'n = c := (%d)%d + (%d)%d = %d != gcd\n", ap,m,bp,n,c);

		/* printf("a'm + b'n = c := (%d)%d + (%d)%d = %d != gcd\n", ap,m,bp,n,c,ap*m+bp*n); */

		/* printf("%-6d %-6d %-6d %-6d %-6d %-6d %-6d %-6d\n",ap, a, bp, b, c, d, q, r); */
		/* step 3 */
		if (r == 0) {
			printf("(%d)%d + (%d)%d = %d, is are formula for am + bn = d\n", a,m,b,n,d);
			return 0;
		}

		/* step 4 */
		c = d;
		d = r;
		t = ap;
		ap = a;
		a = t - (q*a);
		t = bp;
		bp = b;
		b = t - (q*b);
	}

	return 0;
}

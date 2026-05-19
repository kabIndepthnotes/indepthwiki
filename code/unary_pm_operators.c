/* Name: unary_pm_operators.c */
/* Purpose: to show the operations of the unary plus and minus operators */
/* Author: kab@indepthnotes.com */
/* Donate! indepthnotes.com/donate */

#include <stdio.h>

int
main(void)
{
	int num = 5;
	int plus = +num;
	int minus = -num;
	printf("plus is %d\n", plus);
	printf("minus is %d\n", minus);
	return 0;
}

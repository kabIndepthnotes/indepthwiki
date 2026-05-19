/* Name: algorithm_m.c */
/* Purpose: clarify taocp algorithm */
/* Author: kab@indepthnotes.com */
/* Donate! indepthnotes.com/donate */

int
main(void)
{
	int X[] = {1,2,3,4,5,6,7,8,9};
	int n = sizeof(X)/sizeof(X[0]); /* elements of array */

	/* step 1 */
	int j = n;
	int k = n - 1;
	int m = X[n]; /* (During this algorithm we will have m = X [ j ] = maxk<i≤n X [i].) */

m2:
	/* step 2 */
	if (k == 0) {
		return 0;
	}
	
	/* step 3 */
	if (X[k] <= m) {
	goto m5;
	}

	/* step 4 */
	j = k;
	m = X[k];

m5:
	/* step 5 */
	k--;
	goto m2;
}

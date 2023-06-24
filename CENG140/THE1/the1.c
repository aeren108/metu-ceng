#include<stdio.h>

int main() {
	int wall_length;
	int tribes;
	int i, j, k;
	int wall[1000000];

	scanf("%d %d", &wall_length, &tribes);
	for (i = 0; i <= wall_length; ++i) {
		wall[i] = 1;
	}

	for (i = 0; i < tribes; ++i) {
		int w, h, t, p, s, a, n;
		scanf("%d %d %d %d %d %d %d", &w, &h, &t, &p, &s, &a, &n);

		for (j = 0; j < n; ++j) {
			for (k = p; k < p+w; ++k) {
				if (k < 0 || k > wall_length + 1) continue;
				if (wall[k] < h) wall[k] = h;
			}
			p += a*s;
		}
	}

	for (i = 0; i <= wall_length; ++i) {
		printf("%d ", wall[i]);
	}
	printf("\n");
}
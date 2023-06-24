#include<stdio.h>
#include<stdlib.h>

main() {
	FILE* file1;
	char c, *str;
	char *k = malloc(10);
	int i;
	
	file1 = fopen("yazi.md", "w+");
	fprintf(file1, "# Baslik\nMerhaba Dünya\n");
	fseek(file1, 0, SEEK_SET);

	while (fgets(k, 10, file1)) {
		printf("%s", k);
	}

	
	printf("%d %d %d\n", 0xFF, 0xFF00, 0x00FF);
	printf("%b\n", 0xFFFF & 1 << 7);
}
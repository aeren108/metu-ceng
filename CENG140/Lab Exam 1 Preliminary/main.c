#include <stdio.h>

int main() {
	char company;
	int money;
	int products;

	char op;
	int control = 1;
	int amount;

	scanf(" %c %d %d", &company, &money, &products);

	while(1) {
		scanf(" %c", &op);

		if (op == 'Q') {
			printf("We are the greatest company in the world...");
			break;
		} else if (op == 'M'){
			printf("We have %d on our bank account.", money);
		} else if (op == 'P') {
			printf("We have %d products on our storage.", products);
		} else if (op == 'C') {
			scanf("%d", &amount);
			products += amount;
		} else if (op == 'L') {
			scanf("%d", &amount);
			money += amount;
		} else if (op == 'R') {
			scanf("%d", &amount);
			money -= amount;
		} else if (op == 'D') {
			break;
		} else break;
	}

	return 0;
}
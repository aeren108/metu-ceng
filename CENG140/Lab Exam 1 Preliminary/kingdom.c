#include <stdio.h>

int main() {
	char kingdom;
	int money;

	char op;
	
	int loan;
	int amount;
	int peasants, burghers, nobles;

	int tax;
	char armyName;
	int initCost, opCost, power, armyCount;
	double score;
	int totalOpCost;

	loan = 0;
	totalOpCost = 0;
	armyCount = 0;
	tax = 0;

	scanf(" %c %d", &kingdom, &money);

	while(1) {
		scanf(" %c", &op);
		if (op == 'Q') {
			printf("Our reign may never end...\n");
			break;
		} else if (op == 'R') {
			printf("We have %d ducats in our treasury.\n", money);
		} else if (op == 'L') {
			scanf(" %d", &amount);
			loan += amount;
			money += amount;
		} else if (op == 'P') {
			scanf(" %d", &amount);
			money -= amount;
			loan -= amount;
			if (loan <= 0) {
				loan = 0;
				printf("We have no remaining debts.\n");
			}
		} else if (op == 'F') {
			if (loan > 1) printf("We have %d ducats of remaining loans.\n", loan);
			else printf("We have %d ducat of remaining loans.\n", loan);
		} else if (op == 'T') {
			scanf("%d %d %d", &peasants, &burghers, &nobles);
			tax = peasants * 2 + burghers * 5 + nobles * 10;
			if (tax > 1) printf("Our kingdom has %d ducats income.\n", tax);
			else printf("Our kingdom has %d ducat income.\n", tax);
		} else if (op == 'A') {
			char a1, a2, a3; 
			int ic1, opc1, ap1;
			int ic2, opc2, ap2;
			int ic3, opc3, ap3;

			double s1, s2, s3;

			scanf(" %c %d %d %d", &a1, &ic1, &opc1, &ap1);
			scanf(" %c %d %d %d", &a2, &ic2, &opc2, &ap2);
			scanf(" %c %d %d %d", &a3, &ic3, &opc3, &ap3);

			s1 = ap1 / (ic1 + 12.0 * opc1);
			s2 = ap2 / (ic2 + 12.0 * opc2);
			s3 = ap3 / (ic3 + 12.0 * opc3);

			if (s1 >= s2) {
				if (s1 >= s3) {
					armyName = a1; initCost = ic1, opCost = opc1; power = ap1; score = s1;
				} else {
					armyName = a3; initCost = ic3, opCost = opc3; power = ap3; score = s3;
				}
			} else {
				if (s2 >= s3) {
					armyName = a2; initCost = ic2, opCost = opc2; power = ap2; score = s2;
				} else {
					armyName = a3; initCost = ic3, opCost = opc3; power = ap3; score = s3;
				}
			}
			printf("Our army will be %c, since its good score of %.4f.\n", armyName, score);
		} else if (op == 'C') {
			if (initCost > money) {
				printf("We can not afford this army for now.\n");
				continue;
			} else {
				armyCount++;
				money -= initCost;
				totalOpCost += opCost;

				if (armyCount > 1) {
					printf("Our army is stronger now. We have %d armies serving our kingdom.\n", armyCount);
				} else if (armyCount == 1) {
					printf("Our army is stronger now. We have %d army serving our kingdom.\n", armyCount);
				}
			}
		} else if (op == 'M') {
			int balance = tax - totalOpCost;
			money += balance;
			printf("This month our kingdom's balance is %d.\n", balance);
		}
	}
	return 0;
}
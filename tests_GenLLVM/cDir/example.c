//Example belongs to Vatricia Edgar. Pulled from a previous class.

#include <stdio.h>
#include <stdlib.h>

struct Process {
	int number;
	double tau;
	double alpha;
	int* ticks;
};

void input(struct Process* procs, int ticks, int pros, FILE* file) {
	int i;
	int j;
	for (i = 0; i < pros; i++) {
		struct Process proc;
		fscanf(file, "%d", &proc.number);
		fscanf(file, "%lf", &proc.tau);
		fscanf(file, "%lf", &proc.alpha);

		proc.ticks = (int*)malloc(ticks * sizeof(int));

		for (j = 0; j < ticks; j++) {
			fscanf(file, "%d", &proc.ticks[j]);
		}
		procs[i] = proc;
	}
}

struct Process smallestBurst(struct Process* procs, int tick, int procNumb) {
	struct Process minProc = procs[0];
	int minBurst = minProc.ticks[tick];
	int j = 0;
	for (j = 0; j <procNumb; j++) {
		if (procs[j].ticks[tick] < minBurst) {
			minProc = procs[j];
			minBurst = minProc.ticks[tick];
		}
	}
	return minProc;
}

struct Process smallestBurstAboveX(struct Process* procs, int tick, int x, int procNumb) {
	struct Process minProc = procs[x];
	int minBurst = minProc.ticks[tick];
	int i = 0;
	int minBurstFound = 0;
	while (minBurstFound != 1 && i < procNumb) {
		if (procs[i].ticks[tick] > procs[x].ticks[tick]) {
			minProc = procs[i];
			minBurst = minProc.ticks[tick];
			minBurstFound = 1;
		}
		i++;
	}
	for (i = 0; i <procNumb; i++) {
		if (procs[i].ticks[tick] <= minBurst && procs[i].ticks[tick] >= procs[x].ticks[tick] && i != x) {
			minProc = procs[i];
			minBurst = minProc.ticks[tick];
		}
	}
	return minProc;
}

void shortestFirst(int tickNumb, int procNumb, struct Process* procs) {
	int i;
	int j;
	int time = 0;
	int waitTime = 0;
	int turnTime = 0;
	printf("\n == Shortest - Job - First ==\n");
	for (i = 0; i < tickNumb; i++) {
		int roundTime = 0;
		printf("Simulating %d th round of processes @ time %d:\n", i, time);
		struct Process min = smallestBurst(procs, i, procNumb);
		for (j = 0; j < procNumb; j++) {
			printf("Process %d took %d.\n", min.number, min.ticks[i]);
			time += min.ticks[i];

			waitTime += roundTime;
			roundTime += min.ticks[i];
			turnTime += roundTime;
			min = smallestBurstAboveX(procs, i, min.number, procNumb);
		}
	}
	printf("Turnaround time : %d\n Waiting time : %d\n", turnTime, waitTime);
}

struct Process* smallestTau(struct Process* procs, int tick, int procNumb) {
	struct Process* minProc = &procs[0];
	double minTau = minProc->tau;
	int j = 0;
	for (j = 0; j <procNumb; j++) {
		if (procs[j].tau < minTau) {
			minProc = &procs[j];
			minTau = minProc->tau;
		}
	}
	return minProc;
}

struct Process* smallestTauAboveX(struct Process* procs, int tick, int x, int procNumb) {
	struct Process* minProc = &procs[x];
	double minTau = minProc->tau;
	int j = 0;
	int i = 0;
	double compTau = procs[x].tau;
	int minTauFound = 0;
	while (minTauFound != 1 && i < procNumb) {
		if (procs[i].tau > procs[x].tau) {
			minProc = &procs[i];
			minTau = minProc->tau;
			minTauFound = 1;
		}
		i++;
	}
	for (j = 0; j <procNumb; j++) {
		if (procs[j].tau <= minTau && procs[j].tau >= compTau && j!=x) {
			minProc = &procs[j];
			minTau = minProc->tau;
		}
	}
	return minProc;
}

void shortestFirstLive(int tickNumb, int procNumb, struct Process* procs) {
	int i;
	int j;
	int time = 0;
	int waitTime = 0;
	int turnTime = 0;
	double error = 0;
	printf("\n == Shortest - Job - First Live ==\n");
	for (i = 0; i < tickNumb; i++) {
		int roundTime = 0;
		printf("ShorSimulating live %d th round of processes @ time %d:\n", i, time);
		struct Process* min = smallestTau(procs, i, procNumb);
		for (j = 0; j < procNumb; j++) {
			printf("Process %d was estimated for %lf and took %d.\n", min->number, min->tau, min->ticks[i]);
			time += min->ticks[i];

			waitTime += roundTime;
			roundTime += min->ticks[i];
			turnTime += roundTime;
			error += abs(min->ticks[i] - min->tau);
			min = smallestTauAboveX(procs, i, min->number, procNumb);
		}

		for (j = 0; j < procNumb; j++) {
			procs[j].tau = procs[j].tau * procs[j].alpha + procs[j].ticks[i] * (1 - procs[j].alpha);
		}
	}
	printf("Turnaround time : %d\n Waiting time : %d\n Estimation Error : %lf \n", turnTime, waitTime, error);
}

int main() {
	FILE* file = fopen("data.txt", "r");

	int tickNumb;
	int procNumb;
	fscanf(file, "%d", &tickNumb);
	fscanf(file, "%d", &procNumb);
	struct Process* procs = (struct Process*)  malloc(procNumb * sizeof(struct Process));

	input(procs, tickNumb, procNumb, file);
	shortestFirst(tickNumb, procNumb, procs);
	shortestFirstLive(tickNumb, procNumb, procs);
	return 0;
}


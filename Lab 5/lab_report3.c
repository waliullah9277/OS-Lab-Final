#include <stdio.h>
#define MAX 100

// Function to implement Round Robin Scheduling
void roundRobin(int n, int at[], int bt[], int tq) {
int rt[MAX], ct[MAX], tat[MAX], wt[MAX];
int completed = 0, time = 0, front = 0, rear = 0,
queue[MAX], visited[MAX] = {0};

// Copy burst time to remaining time
for (int i = 0; i < n; i++)
rt[i] = bt[i];

queue[rear++] = 0;
visited[0] = 1;

while (completed < n) {
int idx = queue[front++];
if (rt[idx] > tq) {
time += tq;
rt[idx] -= tq;
} else {
time += rt[idx];
rt[idx] = 0;
ct[idx] = time;
completed++;
}

4

// Enqueue newly arrived processes
for (int i = 0; i < n; i++) {
if (!visited[i] && at[i] <= time) {
queue[rear++] = i;
visited[i] = 1;
}
}

// If current process not finished, enqueue

again

if (rt[idx] > 0)
queue[rear++] = idx;

// If queue becomes empty, jump to next process
if (front == rear) {
for (int i = 0; i < n; i++) {
if (rt[i] > 0) {
queue[rear++] = i;
visited[i] = 1;
break;
}
}
}
}

// Calculate TAT and WT
float total_tat = 0, total_wt = 0;
printf("\nProcess\tAT\tBT\tCT\tTAT\tWT\n");

5

for (int i = 0; i < n; i++) {
tat[i] = ct[i] - at[i];
wt[i] = tat[i] - bt[i];
total_tat += tat[i];
total_wt += wt[i];
printf("P%d\t%d\t%d\t%d\t%d\t%d\n", i+1, at[i],

bt[i], ct[i], tat[i], wt[i]);
}

printf("\nAverage Turnaround Time = %.2f", total_tat
/ n);
printf("\nAverage Waiting Time = %.2f\n", total_wt /
n);
}

// Main function for input
int main() {
int n, at[MAX], bt[MAX], tq;

printf("Enter number of processes: ");
scanf("%d", &n);

for (int i = 0; i < n; i++) {
printf("Enter Arrival Time for Process %d: ",

i+1);

scanf("%d", &at[i]);
printf("Enter Burst Time for Process %d: ",

i+1);

scanf("%d", &bt[i]);

6

}

printf("Enter Time Quantum: ");
scanf("%d", &tq);

roundRobin(n, at, bt, tq);

return 0;
}
// CPU Scheduling Algorithms in C (Beginner-Friendly)
// Includes: SJF (w/ and w/o Arrival Time), Priority (w/ and w/o Arrival Time), Round Robin

#include <stdio.h>

// ---------------------- SJF WITHOUT ARRIVAL TIME ----------------------
void sjf_no_arrival() {
    int n, i, j;
    printf("\nSJF without Arrival Time\nEnter number of processes: ");
    scanf("%d", &n);
    int bt[n], p[n], wt[n], tat[n], temp;

    for(i = 0; i < n; i++) {
        printf("Enter Burst Time for P%d: ", i+1);
        scanf("%d", &bt[i]);
        p[i] = i+1;
    }

    // Sort based on burst time
    for(i = 0; i < n-1; i++) {
        for(j = i+1; j < n; j++) {
            if(bt[i] > bt[j]) {
                temp = bt[i]; bt[i] = bt[j]; bt[j] = temp;
                temp = p[i]; p[i] = p[j]; p[j] = temp;
            }
        }
    }

    wt[0] = 0;
    for(i = 1; i < n; i++)
        wt[i] = wt[i-1] + bt[i-1];

    for(i = 0; i < n; i++)
        tat[i] = bt[i] + wt[i];

    printf("\nProcess\tBT\tWT\tTAT\n");
    for(i = 0; i < n; i++)
        printf("P%d\t%d\t%d\t%d\n", p[i], bt[i], wt[i], tat[i]);
}

// ---------------------- PRIORITY WITHOUT ARRIVAL TIME ----------------------
void priority_no_arrival() {
    int n, i, j;
    printf("\nPriority Scheduling without Arrival Time\nEnter number of processes: ");
    scanf("%d", &n);
    int bt[n], p[n], pr[n], wt[n], tat[n], temp;

    for(i = 0; i < n; i++) {
        printf("Enter Burst Time & Priority for P%d: ", i+1);
        scanf("%d %d", &bt[i], &pr[i]);
        p[i] = i+1;
    }

    // Sort by priority
    for(i = 0; i < n-1; i++) {
        for(j = i+1; j < n; j++) {
            if(pr[i] > pr[j]) {
                temp = pr[i]; pr[i] = pr[j]; pr[j] = temp;
                temp = bt[i]; bt[i] = bt[j]; bt[j] = temp;
                temp = p[i]; p[i] = p[j]; p[j] = temp;
            }
        }
    }

    wt[0] = 0;
    for(i = 1; i < n; i++)
        wt[i] = wt[i-1] + bt[i-1];
    for(i = 0; i < n; i++)
        tat[i] = wt[i] + bt[i];

    printf("\nProcess\tBT\tPriority\tWT\tTAT\n");
    for(i = 0; i < n; i++)
        printf("P%d\t%d\t%d\t\t%d\t%d\n", p[i], bt[i], pr[i], wt[i], tat[i]);
}

// ---------------------- ROUND ROBIN ----------------------
void round_robin() {
    int n, i, time, remain, tq;
    printf("\nRound Robin Scheduling\nEnter number of processes: ");
    scanf("%d", &n);
    int bt[n], rt[n];
    for(i = 0; i < n; i++) {
        printf("Enter Burst Time for P%d: ", i+1);
        scanf("%d", &bt[i]);
        rt[i] = bt[i];
    }
    printf("Enter Time Quantum: ");
    scanf("%d", &tq);

    int wt[n], tat[n];
    time = 0;
    remain = n;

    while(remain > 0) {
        for(i = 0; i < n; i++) {
            if(rt[i] > 0) {
                if(rt[i] <= tq) {
                    time += rt[i];
                    rt[i] = 0;
                    tat[i] = time;
                    wt[i] = tat[i] - bt[i];
                    remain--;
                } else {
                    rt[i] -= tq;
                    time += tq;
                }
            }
        }
    }

    printf("\nProcess\tBT\tWT\tTAT\n");
    for(i = 0; i < n; i++)
        printf("P%d\t%d\t%d\t%d\n", i+1, bt[i], wt[i], tat[i]);
}

int main() {
    int choice;
    do {
        printf("\nCPU Scheduling Algorithms Menu\n");
        printf("1. SJF (No Arrival Time)\n");
        printf("2. Priority (No Arrival Time)\n");
        printf("3. Round Robin\n");
        printf("0. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch(choice) {
            case 1: sjf_no_arrival(); break;
            case 2: priority_no_arrival(); break;
            case 3: round_robin(); break;
            case 0: printf("Exiting...\n"); break;
            default: printf("Invalid Choice!\n");
        }
    } while(choice != 0);

    return 0;
}

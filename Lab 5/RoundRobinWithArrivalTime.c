#include <stdio.h>

struct Process {
    int pid, at, bt, rt, wt, tat, completed;
};

int main() {
    int n, time = 0, tq, remain = 0;
    struct Process p[10];

    printf("Enter number of processes: ");
    scanf("%d", &n);

    for(int i = 0; i < n; i++) {
        p[i].pid = i+1;
        printf("Enter Arrival Time and Burst Time for P%d: ", i+1);
        scanf("%d%d", &p[i].at, &p[i].bt);
        p[i].rt = p[i].bt;
        p[i].completed = 0;
    }

    printf("Enter Time Quantum: ");
    scanf("%d", &tq);

    while(remain < n) {
        int done = 0;
        for(int i = 0; i < n; i++) {
            if(p[i].at <= time && p[i].rt > 0) {
                if(p[i].rt > tq) {
                    time += tq;
                    p[i].rt -= tq;
                } else {
                    time += p[i].rt;
                    p[i].wt = time - p[i].at - p[i].bt;
                    p[i].tat = p[i].wt + p[i].bt;
                    p[i].rt = 0;
                    p[i].completed = 1;
                    remain++;
                }
                done = 1;
            }
        }
        if (!done)
            time++;  // Idle CPU time
    }

    float avg_wt = 0, avg_tat = 0;
    printf("\nPID\tAT\tBT\tWT\tTAT\n");
    for(int i = 0; i < n; i++) {
        avg_wt += p[i].wt;
        avg_tat += p[i].tat;
        printf("P%d\t%d\t%d\t%d\t%d\n", p[i].pid, p[i].at, p[i].bt, p[i].wt, p[i].tat);
    }

    printf("Average Waiting Time = %.2f\n", avg_wt/n);
    printf("Average Turnaround Time = %.2f\n", avg_tat/n);

    return 0;
}

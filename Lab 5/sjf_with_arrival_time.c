#include <stdio.h>

struct Process {
    int pid, bt, at, ct, tat, wt, done;
};

int main() {
    int n, time = 0, completed = 0;
    float avg_wt = 0, avg_tat = 0;
    struct Process p[10];

    printf("Enter number of processes: ");
    scanf("%d", &n);

    for(int i = 0; i < n; i++) {
        p[i].pid = i+1;
        printf("Enter Arrival Time and Burst Time for P%d: ", i+1);
        scanf("%d%d", &p[i].at, &p[i].bt);
        p[i].done = 0;
    }

    while(completed < n) {
        int idx = -1, min_bt = 9999;
        for(int i = 0; i < n; i++) {
            if(p[i].at <= time && !p[i].done && p[i].bt < min_bt) {
                min_bt = p[i].bt;
                idx = i;
            }
        }

        if(idx != -1) {
            time += p[idx].bt;
            p[idx].ct = time;
            p[idx].tat = p[idx].ct - p[idx].at;
            p[idx].wt = p[idx].tat - p[idx].bt;
            p[idx].done = 1;
            completed++;
        } else {
            time++;
        }
    }

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

#include <stdio.h>

int main()
{
    int b[10], p[10], allocation[10], frag[10];
    int block_count, process_count;
    printf("Enter the number of Blocks: ");
    scanf("%d", &block_count);

    4

        for (int i = 0; i < block_count; i++)
    {
        printf("Enter size of Block %d: ", i + 1);
        scanf("%d", &b[i]);
    }
    printf("Enter the number of Processes: ");
    scanf("%d", &process_count);
    for (int i = 0; i < process_count; i++)
    {
        printf("Enter memory required for process %d: ", i +

                                                             1);

        scanf("%d", &p[i]);
    }
    for (int i = 0; i < process_count; i++)
    {
        allocation[i] = -1;
        for (int j = 0; j < block_count; j++)
        {
            if (b[j] >= p[i])
            {
                allocation[i] = j;
                frag[i] = b[j] - p[i];
                b[j] = -1; // Mark block as used
                break;
            }
        }
    }
printf("\n%-10s%-15s%-10s%-15s%-10s%-10s\n", "Process",
"Process Size", "Block", "Block Size", "Allocated", "Int.
Frag.");
for (int i = 0; i < process_count; i++) {
        if (allocation[i] != -1)
        {
            printf("%-10d%-15d%-10d%-15d%-10s%-10d\n", i + 1,
                   p[i], allocation[i] + 1, p[i] + frag[i], "YES", frag[i]);
            5
        }
        else
        {
            printf("%-10d%-15d%-10s%-15s%-10s%-10s\n", i + 1,

                   p[i], "--", "--", "NO", "--");
        }
}
return 0;
}
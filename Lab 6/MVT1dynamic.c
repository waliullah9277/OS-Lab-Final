#include <stdio.h>

int main()
{
    int total_memory, allocated_memory = 0, process_size;
    char ch = 'y';
    int process_no = 1;
    printf("Enter the total memory available (in Bytes): ");
    scanf("%d", &total_memory);
    while (ch == 'y' || ch == 'Y')
    {

        printf("Enter memory required for process %d (in

               Bytes) : ", process_no);

                        scanf("%d", &process_size);
        if (process_size <= (total_memory - allocated_memory))

        {

            allocated_memory += process_size;
            printf("Memory is allocated for Process %d\n",

                   process_no);
        }
        else
        {
            printf("Memory is Full\n");
            break;
        }
        printf("Do you want to continue (y/n): ");

        3

            scanf(" %c", &ch); // space before %c to avoid newline

        issue

            process_no++;
    }
    printf("\nTotal Memory Available: %d\n", total_memory);
    printf("PROCESS\t\tMEMORY ALLOCATED\n");
    for (int i = 1; i < process_no; i++)
    {
        printf("%d\t\t[Memory Allocated]\n", i);
    }
    printf("Total Memory Allocated is %d\n", allocated_memory);
    printf("Total External Fragmentation is %d\n", total_memory - allocated_memory);
    return 0;
}
#include <stdio.h>

int main() {
    int totalMemory, remainingMemory, processSize;
    int processCount = 0;

    printf("\n=== MVT (Variable Partitioning) Memory Management ===\n");

    // Input total memory size
    printf("Enter total memory size (in KB): ");
    scanf("%d", &totalMemory);

    remainingMemory = totalMemory;

    // Keep taking process sizes until memory runs out
    while (1) {
        printf("Enter size of process %d (in KB) or -1 to stop: ", processCount + 1);
        scanf("%d", &processSize);

        if (processSize == -1) {
            break;
        }

        if (processSize <= remainingMemory) {
            remainingMemory -= processSize;
            printf("Process %d loaded successfully. Remaining memory = %d KB\n", processCount + 1, remainingMemory);
            processCount++;
        } else {
            printf("Not enough memory for process %d! Remaining memory = %d KB\n", processCount + 1, remainingMemory);
        }
    }

    printf("Total number of processes loaded: %d\n", processCount);
    printf("Total external fragmentation (unused memory): %d KB\n", remainingMemory);

    return 0;
}

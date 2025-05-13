#include <stdio.h>

int main() {
    int totalMemory, blockSize, numberOfBlocks, processCount;
    int processes[100];
    int i, internalFragmentation = 0;

    printf("\n=== MFT (Fixed Partitioning) Memory Management ===\n");

    // Input total memory and block size
    printf("Enter total memory size (in KB): ");
    scanf("%d", &totalMemory);

    printf("Enter size of each block (in KB): ");
    scanf("%d", &blockSize);

    // Calculate number of blocks
    numberOfBlocks = totalMemory / blockSize;
    printf("Total number of fixed-size blocks = %d\n", numberOfBlocks);

    // Input number of processes
    printf("Enter number of processes: ");
    scanf("%d", &processCount);

    if (processCount > numberOfBlocks) {
        printf("Only %d processes can be loaded due to limited blocks.\n", numberOfBlocks);
        processCount = numberOfBlocks;
    }

    // Take process sizes and allocate
    for (i = 0; i < processCount; i++) {
        printf("Enter size of process %d (in KB): ", i + 1);
        scanf("%d", &processes[i]);

        if (processes[i] > blockSize) {
            printf("Process %d is too large and cannot be loaded into any block.\n", i + 1);
        } else {
            int frag = blockSize - processes[i];
            internalFragmentation += frag;
            printf("Process %d is allocated with internal fragmentation of %d KB.\n", i + 1, frag);
        }
    }

    // Print total internal fragmentation
    printf("Total internal fragmentation: %d KB\n", internalFragmentation);

    return 0;
}

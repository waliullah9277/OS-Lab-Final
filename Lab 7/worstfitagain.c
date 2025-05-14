#include <stdio.h>
#define MAX 25

int main() {
    int blockSize[MAX], fileSize[MAX], fragment[MAX];
    int nb, nf;
    int allocation[MAX];             // Stores block number allocated to each file
    int totalInternalFragmentation = 0;

    // Input block and file count
    printf("Enter the number of blocks: ");
    scanf("%d", &nb);

    printf("Enter the number of files: ");
    scanf("%d", &nf);

    // Input block sizes
    printf("\nEnter the size of each block:\n");
    for (int i = 0; i < nb; i++) {
        printf("Block %d: ", i + 1);
        scanf("%d", &blockSize[i]);
    }

    // Input file sizes
    printf("\nEnter the size of each file:\n");
    for (int i = 0; i < nf; i++) {
        printf("File %d: ", i + 1);
        scanf("%d", &fileSize[i]);
    }

    // Worst Fit Allocation with Non-contiguous Memory Use
    for (int i = 0; i < nf; i++) {
        int worstIdx = -1;

        for (int j = 0; j < nb; j++) {
            if (blockSize[j] >= fileSize[i]) {
                if (worstIdx == -1 || blockSize[j] > blockSize[worstIdx]) {
                    worstIdx = j;
                }
            }
        }

        if (worstIdx != -1) {
            allocation[i] = worstIdx;
            fragment[i] = blockSize[worstIdx] - fileSize[i];
            totalInternalFragmentation += fragment[i];
            blockSize[worstIdx] -= fileSize[i]; // Reduce available space in that block
        } else {
            allocation[i] = -1;
            fragment[i] = 0;
        }
    }

    // Output Allocation Table
    printf("\nFile_No\tFile_Size\tBlock_No\tFragment\n");
    for (int i = 0; i < nf; i++) {
        printf("%d\t%d\t\t", i + 1, fileSize[i]);
        if (allocation[i] != -1) {
            printf("%d\t\t%d\n", allocation[i] + 1, fragment[i]);
        } else {
            printf("Not Allocated\t-\n");
        }
    }

    // Output Total Fragmentation
    printf("\nTotal Internal Fragmentation = %d\n", totalInternalFragmentation);

    return 0;
}

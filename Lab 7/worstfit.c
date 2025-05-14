// Worst Fit Memory Allocation - Static Version

#include <stdio.h>

void worstFit(int blockSize[], int m, int fileSize[], int n) {
    int allocation[n], fragments[n], totalFragment = 0;
    int blockAllocated[m];

    for (int i = 0; i < m; i++) blockAllocated[i] = 0;

    for (int i = 0; i < n; i++) {
        int worstIdx = -1;
        for (int j = 0; j < m; j++) {
            if (!blockAllocated[j] && blockSize[j] >= fileSize[i]) {
                if (worstIdx == -1 || blockSize[j] > blockSize[worstIdx])
                    worstIdx = j;
            }
        }
        if (worstIdx != -1) {
            allocation[i] = worstIdx;
            fragments[i] = blockSize[worstIdx] - fileSize[i];
            totalFragment += fragments[i];
            blockAllocated[worstIdx] = 1;
        } else {
            allocation[i] = -1;
            fragments[i] = 0;
        }
    }

    printf("\nWorst Fit Allocation:\n");
    printf("File_no\tFile_size\tBlock_no\tBlock_size\tFragment\n");
    for (int i = 0; i < n; i++) {
        printf("%d\t%d\t\t", i + 1, fileSize[i]);
        if (allocation[i] != -1)
            printf("%d\t\t%d\t\t%d\n", allocation[i] + 1, blockSize[allocation[i]], fragments[i]);
        else
            printf("Not Allocated\t-\t\t-\n");
    }
    printf("\nTotal Internal Fragmentation = %d\n", totalFragment);
}

int main() {
    int blockSize[10], fileSize[10], nb, nf;

    printf("Enter number of blocks: ");
    scanf("%d", &nb);
    printf("Enter block sizes:\n");
    for (int i = 0; i < nb; i++) {
        printf("Block %d: ", i + 1);
        scanf("%d", &blockSize[i]);
    }

    printf("Enter number of files: ");
    scanf("%d", &nf);
    printf("Enter file sizes:\n");
    for (int i = 0; i < nf; i++) {
        printf("File %d: ", i + 1);
        scanf("%d", &fileSize[i]);
    }

    worstFit(blockSize, nb, fileSize, nf);
    return 0;
}

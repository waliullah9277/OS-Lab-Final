// First Fit Memory Allocation - Static Version using Arrays

#include <stdio.h>

void firstFit(int blockSize[], int m, int fileSize[], int n) {
    int allocation[n], fragments[n], totalFragment = 0;
    int blockAllocated[m];

    for (int i = 0; i < m; i++) blockAllocated[i] = 0;

    for (int i = 0; i < n; i++) {
        allocation[i] = -1;
        for (int j = 0; j < m; j++) {
            if (!blockAllocated[j] && blockSize[j] >= fileSize[i]) {
                allocation[i] = j;
                fragments[i] = blockSize[j] - fileSize[i];
                totalFragment += fragments[i];
                blockAllocated[j] = 1;
                break;
            }
        }
        if (allocation[i] == -1)
            fragments[i] = 0;
    }

    printf("\nFirst Fit Allocation:\n");
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
    int blockSize[10], fileSize[10];
    int nb, nf;

    printf("Enter the number of blocks: ");
    scanf("%d", &nb);
    printf("Enter the size of each block:\n");
    for (int i = 0; i < nb; i++) {
        printf("Block %d: ", i + 1);
        scanf("%d", &blockSize[i]);
    }

    printf("Enter the number of files: ");
    scanf("%d", &nf);
    printf("Enter the size of each file:\n");
    for (int i = 0; i < nf; i++) {
        printf("File %d: ", i + 1);
        scanf("%d", &fileSize[i]);
    }

    firstFit(blockSize, nb, fileSize, nf);

    return 0;
}

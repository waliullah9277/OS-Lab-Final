#include <stdio.h>

int main() {
    int pageFaultCount = 0;
    int pages[50], memory[20], memoryIndex = 0;
    int numberOfPages, numberOfFrames;
    int i, j, k, isPageFound;

    // Input number of pages
    printf("Enter number of pages: ");
    scanf("%d", &numberOfPages);

    // Input page reference string
    printf("Enter the pages:\n");
    for(i = 0; i < numberOfPages; i++) {
        scanf("%d", &pages[i]);
    }

    // Input number of frames
    printf("Enter number of frames: ");
    scanf("%d", &numberOfFrames);

    // Initialize memory frames to -1
    for(i = 0; i < numberOfFrames; i++) {
        memory[i] = -1;
    }

    printf("\nThe Page Replacement Process is:\n");

    for(i = 0; i < numberOfPages; i++) {
        isPageFound = 0;

        // Check if page is already in memory
        for(j = 0; j < numberOfFrames; j++) {
            if(memory[j] == pages[i]) {
                isPageFound = 1;
                break;
            }
        }

        // If page not found, replace using FIFO
        if(!isPageFound) {
            memory[memoryIndex] = pages[i];
            memoryIndex = (memoryIndex + 1) % numberOfFrames;  // Circular increment
            pageFaultCount++;
        }

        // Display current state of memory
        for(k = 0; k < numberOfFrames; k++) {
            if(memory[k] == -1)
                printf("\t-");
            else
                printf("\t%d", memory[k]);
        }

        if(!isPageFound) {
            printf("\tPage Fault No: %d", pageFaultCount);
        }
        printf("\n");
    }

    // Final output
    printf("\nTotal number of Page Faults using FIFO: %d\n", pageFaultCount);

    return 0;
}

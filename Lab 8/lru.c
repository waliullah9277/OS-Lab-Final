#include <stdio.h>

int main() {
    int pageFaultCount = 0;
    int pages[50], memory[20], lastUsed[20], memoryIndex = 0;
    int numberOfPages, numberOfFrames;
    int i, j, k, isPageFound, leastRecentlyUsedIndex;

    // Input number of pages
    printf("Enter number of pages: ");
    scanf("%d", &numberOfPages);

    // Input page reference string
    printf("Enter the pages:");
    for(i = 0; i < numberOfPages; i++) {
        scanf("%d", &pages[i]);
    }

    // Input number of frames
    printf("Enter number of frames: ");
    scanf("%d", &numberOfFrames);

    // Initialize memory frames to -1 and last used array to 0
    for(i = 0; i < numberOfFrames; i++) {
        memory[i] = -1;
        lastUsed[i] = -1;  // Initially set to -1 to indicate pages have not been used yet
    }

    printf("\nThe Page Replacement Process is:\n");

    for(i = 0; i < numberOfPages; i++) {
        isPageFound = 0;

        // Check if page is already in memory
        for(j = 0; j < numberOfFrames; j++) {
            if(memory[j] == pages[i]) {
                isPageFound = 1;
                lastUsed[j] = i;  // Update the last used time for this page
                break;
            }
        }

        // If page not found, replace using LRU
        if(!isPageFound) {
            // If there's space in memory, place the page in the first empty slot
            if(memoryIndex < numberOfFrames) {
                memory[memoryIndex] = pages[i];
                lastUsed[memoryIndex] = i;  // Update the last used time for the new page
                memoryIndex++;
            }
            else {
                // Find least recently used page
                leastRecentlyUsedIndex = 0;
                for(j = 1; j < numberOfFrames; j++) {
                    if(lastUsed[j] < lastUsed[leastRecentlyUsedIndex]) {
                        leastRecentlyUsedIndex = j;
                    }
                }

                // Replace the least recently used page
                memory[leastRecentlyUsedIndex] = pages[i];
                lastUsed[leastRecentlyUsedIndex] = i;  // Update the last used time for the new page
            }
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
    printf("\nTotal number of Page Faults using LRU: %d\n", pageFaultCount);

    return 0;
}

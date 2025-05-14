#include <stdio.h>

int main()
{
    int pages[100], frames[10];
    int totalPages, totalFrames;
    int pageHit, pageMiss, pageFault = 0, pageHits = 0;
    int front = 0, rear = 0;

    // Input the number of pages
    printf("Enter number of pages: ");
    scanf("%d", &totalPages);

    // Input the page reference string
    printf("Enter the page reference string: ");
    for (int i = 0; i < totalPages; i++)
    {
        scanf("%d", &pages[i]);
    }

    // Input the number of frames
    printf("Enter number of frames: ");
    scanf("%d", &totalFrames);

    // Initialize frames with -1
    for (int i = 0; i < totalFrames; i++)
    {
        frames[i] = -1;
    }

    // FIFO page replacement algorithm
    for (int i = 0; i < totalPages; i++)
    {
        pageHit = 0;

        // Check if the page is already in one of the frames
        for (int j = 0; j < totalFrames; j++)
        {
            if (frames[j] == pages[i])
            {
                pageHit = 1;
                pageHits++;
                break;
            }
        }

        // If page is not found, replace the page using FIFO
        if (pageHit == 0)
        {
            frames[rear] = pages[i];
            rear = (rear + 1) % totalFrames;  // Circular increment of rear pointer
            front = (front + 1) % totalFrames; // If all frames are full, move front pointer
            pageFault++;
        }

        // Display the current frame contents
        printf("\nCurrent frames: ");
        for (int j = 0; j < totalFrames; j++)
        {
            if (frames[j] == -1)
                printf("\t-");
            else
                printf("\t%d", frames[j]);
        }

        if (pageHit == 0)
        {
            printf("\tPage Fault No: %d", pageFault);
        }

        printf("\n");
    }

    // Calculate hit and miss ratios
    float hitRatio = (float)pageHits / totalPages;
    float missRatio = (float)pageFault / totalPages;

    // Output the results
    printf("\nTotal Page Hits = %d", pageHits);
    printf("\nTotal Page Faults = %d", pageFault);
    printf("\nHit Ratio = %.2f", hitRatio);
    printf("\nMiss Ratio = %.2f\n\n", missRatio);

    return 0;
}

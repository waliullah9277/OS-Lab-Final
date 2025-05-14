#include <stdio.h>
int main()
{

    int pages[100], frames[10], recent[10];
    int totalPages, totalFrames;
    int pageHit, pageMiss, pageFault = 0, pageHits = 0,
                           time = 0;

    printf("Enter number of pages: ");
    scanf("%d", &totalPages);

    printf("Enter the page referance string: ");
    for (int i = 0; i < totalPages; i++)
    {
        scanf("%d", &pages[i]);
    }

    printf("Enter number of frames: ");
    scanf("%d", &totalFrames);
    for (int i = 0; i < totalFrames; i++)
    {
        frames[i] = -1;
        recent[i] = 0;
    }

    // LRU algorithm implements
    for (int i = 0; i < totalPages; i++)
    {
        pageHit = 0;
        for (int j = 0; j < totalFrames; j++)
        {
            if (frames[j] == pages[i])
            {
                pageHit = 1;
                pageHits++;
                recent[j] = time++;
                break;
            }
        }

        if (pageHit == 0)
        {
            int lru = 0;
            for (int j = 1; j < totalFrames; j++)
            {
                if (recent[j] < recent[lru])
                {
                    lru = j;
                }
            }
            frames[lru] = pages[i];
            recent[lru] = time++;
            pageFault++;
        }
    }

    float hitRatio = (float)pageHits / totalPages;
    float missRatio = (float)pageFault / totalPages;

    printf("\nTotal Page Hits = %d", pageHits);
    printf("\nTotal Page Faults = %d", pageFault);

    printf("\nHit Ratio = %.2f", hitRatio);
    printf("\nMiss Ratio = %.2f\n\n", missRatio);

    return 0;
}
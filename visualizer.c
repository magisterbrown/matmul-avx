#include <stdio.h>
#include "raylib/raylib.h"

//(Color){255, 0, 0, 255}
//(Color){255, 0, 0, 0}

void main(size_t side, float matrix[side][side])
{

    for(int x=0;x<side;x++)
    {
        for(int y=0;y<side;y++)
        {
            DrawRectangle(x*30, y*30, 30, 30, ColorAlpha(BLUE, 0.5));
            //printf("%f\n", matrix[x][y]);
        }
    }
    //printf("Hotts\n");
}

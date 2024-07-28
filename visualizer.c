#include <stdio.h>
#include <stdlib.h>
#include "raylib/raylib.h"

//(Color){255, 0, 0, 255}
//(Color){255, 0, 0, 0}
#define MAT_SIDE 10

void rand_init(size_t side ,float matrix[side][side])
{
    for(int x=0;x<side;x++)
        for(int y=0;y<side;y++)
            matrix[x][y] = (float)rand()/(float)RAND_MAX;
}

void draw_mat(size_t side ,float matrix[side][side], Vector2 pos, Color col)
{
    for(int x=0;x<side;x++)
        for(int y=0;y<side;y++)
            DrawRectangle(pos.x+x*30, pos.y+y*30, 30, 30, ColorAlpha(col, matrix[x][y]));
}

void main()
{
    float mata[MAT_SIDE][MAT_SIDE];
    float matb[MAT_SIDE][MAT_SIDE];
    rand_init(MAT_SIDE, mata);
    rand_init(MAT_SIDE, matb);
    draw_mat(MAT_SIDE, mata, (Vector2){30, 0}, BLUE);
    draw_mat(MAT_SIDE, matb, (Vector2){430, 0}, RED);
}

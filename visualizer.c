#include <stdio.h>
#include <stdlib.h>
#include "raylib/raylib.h"
#include "state.h"

void draw_mat(size_t side ,float matrix[side][side], Vector2 pos, Color col)
{
    for(int x=0;x<side;x++)
        for(int y=0;y<side;y++)
            DrawRectangle(pos.x+x*30, pos.y+y*30, 30, 30, ColorAlpha(col, matrix[x][y]));
}

void draw(struct state *data)
{
    draw_mat(MAT_SIDE, data->mata, (Vector2){30, 30}, BLUE);
    draw_mat(MAT_SIDE, data->matb, (Vector2){430, 30}, RED);
}

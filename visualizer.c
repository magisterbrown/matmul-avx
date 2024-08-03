#include <stdio.h>
#include <stdlib.h>
#include "raylib/raylib.h"
#include "state.h"

#define MAX(a, b) ((a) > (b) ? (a) : (b))

void draw_mat(size_t a, size_t b, float matrix[a][b], Vector2 pos, Color col, int cellsz)
{
    int mv = 0;
    for(int x=0;x<a;x++)
        for(int y=0;y<b;y++)
            mv = MAX(matrix[x][y], mv);

    for(int x=0;x<a;x++)
        for(int y=0;y<b;y++)
        {
            DrawRectangle(pos.y+y*cellsz, pos.x+x*cellsz, cellsz, cellsz, ColorAlpha(col, (float)matrix[x][y]/mv));
            DrawText(TextFormat("%.1f", matrix[x][y]), pos.y+y*cellsz+4, pos.x+x*cellsz+4, cellsz/2, BLACK);
        }
}

void draw(struct state *data)
{
    draw_mat(SIDA, COMMON, data->mata, (Vector2){25, 25}, BLUE, 25);
    draw_mat(COMMON, SIDB, data->matb, (Vector2){25, 25*(COMMON+2)}, RED, 25);
    draw_mat(SIDA, SIDB, data->matc, (Vector2){25*(COMMON+2), 25*(COMMON+2)}, GREEN, 25);
    DrawText(TextFormat("Insturctions executed: %lld", data->rf.values[0].value), 10, GetScreenHeight()-30, 20, BLACK);
    DrawText(TextFormat("Branches missed: %lld/%lld", data->rf.values[1].value, data->rf.values[2].value), 10, GetScreenHeight()-60, 20, BLACK);
    DrawText(TextFormat("Last level cache missed: %lld/%lld", data->rf.values[4].value, data->rf.values[3].value), 10, GetScreenHeight()-90, 20, BLACK);
    DrawText(TextFormat("Execution time: %g ms", data->time), 10, GetScreenHeight()-120, 20, BLACK);
}

#include <regex.h>

void based(char *file)
{
    char line[100];
    FILE *f = fopen(file, "r");
    FILE *o = fopen("assembly/matmul.asm", "w");
    regex_t startb;
    regex_t stopb;
    regcomp(&startb, "^matmul", 0);
    regcomp(&stopb, "LFE", 0);
    int printable = 0;
    while(fgets(line, sizeof(line), f))
    {
        if(regexec(&startb, line, 0, NULL, 0)!=REG_NOMATCH)
            printable = 1;
        if(printable)
            fprintf(o, "%s", line);
        if(regexec(&stopb, line, 0, NULL, 0)!=REG_NOMATCH)
            printable = 0;
    }
    fclose(f);
    fclose(o);
}

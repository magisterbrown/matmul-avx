#define NOB_IMPLEMENTATION
#define NOB_REBUILD_URSELF(binary_path, source_path) "gcc", "-o", binary_path, source_path, "-Wl,-rpath,./raylib", "-lraylib", "-Lraylib"
#include "nob.h"

#include <stdio.h>
#include <dlfcn.h>

#define RLAPI  __attribute__((weak))
#include "raylib/raylib.h"

#define MAT_SIDE 10

typedef void visulizer(size_t side, float matrix[side][side]);

float mata[MAT_SIDE][MAT_SIDE];
float matb[MAT_SIDE][MAT_SIDE];

void *vishandle;
char *errmsg;
visulizer *hot_redrawer()
{
    Nob_Cmd build = {0};
    char *path = "artifacts/vis.so";
    nob_cmd_append(&build, "gcc", "visualizer.c", "-o", path, "-shared");
    if(!nob_cmd_run_sync(build))
    {
        errmsg = "Build of viz failed";
        return NULL;
    }
    if(vishandle != NULL)
        dlclose(vishandle);
    vishandle = dlopen(path, RTLD_NOW);
    errmsg = NULL;
    return dlsym(vishandle, "main");
}

void rand_init(float *matrix, size_t side)
{
    for(int i=0;i<side*side;i++)
    {
        matrix[i] = (float)rand()/(float)(RAND_MAX/a);;
    }
}
int main(int argc, char **argv) 
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    errmsg = NULL;
    rand_init(*mata, MAT_SIDE);
    visulizer *matdraw = hot_redrawer();
    printf("ad");
    InitWindow(800, 500, "main window");
    printf("Heyy\n");
    while(!WindowShouldClose()) {
        if(IsKeyPressed(KEY_R))
            matdraw = hot_redrawer();
        BeginDrawing();
            ClearBackground(RAYWHITE);
            if(errmsg == NULL) 
                matdraw(MAT_SIDE, mata);
            else
                DrawText(errmsg, 0, 0, 20, RED);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}

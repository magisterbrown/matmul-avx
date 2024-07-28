#define NOB_IMPLEMENTATION
#define NOB_REBUILD_URSELF(binary_path, source_path) "gcc", "-o", binary_path, source_path, "-Wl,-rpath,./raylib", "-lraylib", "-Lraylib"
#include "nob.h"

#include <stdio.h>
#include <dlfcn.h>

#define RLAPI  __attribute__((weak))
#include "raylib/raylib.h"

#define MAT_SIDE 10

typedef void visulizer(float *matrix);

float mata[MAT_SIDE][MAT_SIDE];
float matb[MAT_SIDE][MAT_SIDE];

void *vishandle;
visulizer *hot_redrawer()
{
    Nob_Cmd build = {0};
    char *path = "artifacts/vis.so";
    nob_cmd_append(&build, "gcc", "visualizer.c", "-o", path, "-shared");
    nob_cmd_run_sync(build);
    if(vishandle != NULL)
        dlclose(vishandle);
    vishandle = dlopen(path, RTLD_NOW);
    return dlsym(vishandle, "main");
}

void rand_init(float *matrix, size_t side)
{
    for(int i=0;i<side*side;i++)
    {
        matrix[i] = 3.0f;
    }
}
__attribute__((weak)) void nonexistent();
int main(int argc, char **argv) 
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    rand_init(*mata, MAT_SIDE);
    visulizer *matdraw = hot_redrawer();
    printf("ad");
    InitWindow(800, 500, "main window");
    printf("Heyy\n");
    while(!WindowShouldClose()) {
        BeginDrawing();
            matdraw(*mata);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}

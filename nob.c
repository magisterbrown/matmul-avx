#define NOB_IMPLEMENTATION
#define NOB_REBUILD_URSELF(binary_path, source_path) "gcc", "-o", binary_path, source_path, "-Wl,-rpath,./raylib", "-lraylib", "-Lraylib"
#include "nob.h"

#include <stdio.h>
#include <dlfcn.h>

#define RLAPI  __attribute__((weak))
#include "raylib/raylib.h"

#define MAT_SIDE 10

typedef void visulizer();


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

int main(int argc, char **argv) 
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    errmsg = NULL;
    visulizer *matdraw = hot_redrawer();
    printf("ad");
    InitWindow(800, 500, "main window");
    printf("Heyy\n");
    while(!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        if(IsKeyPressed(KEY_R))
            matdraw = hot_redrawer();
        if(errmsg == NULL) 
            matdraw();
        else
            DrawText(errmsg, 0, 0, 20, RED);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}

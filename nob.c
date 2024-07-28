#define NOB_IMPLEMENTATION
#define NOB_REBUILD_URSELF(binary_path, source_path) "gcc", "-o", binary_path, source_path, "-Wl,-rpath,./raylib", "-lraylib", "-Lraylib"
#include "nob.h"

#include <stdio.h>
#include <dlfcn.h>

#define RLAPI  __attribute__((weak))
#include "raylib/raylib.h"

#define MAT_SIDE 10

typedef void visualizer(void *state);
typedef void *starter();

visualizer *matdraw;
starter *matinit;

void *vishandle;
char *errmsg;
void *hot_redrawer()
{
    Nob_Cmd build = {0};
    char *path = "artifacts/vis.so";
    nob_cmd_append(&build, "gcc", "generator.c", "visualizer.c", "-o", path, "-shared");
    if(!nob_cmd_run_sync(build))
    {
        errmsg = "Build failed";
        return NULL;
    }
    if(vishandle != NULL)
        dlclose(vishandle);
    vishandle = dlopen(path, RTLD_NOW);
    errmsg = NULL;
    matdraw = dlsym(vishandle, "draw");
    matinit = dlsym(vishandle, "init");
    return matinit();
}

int main(int argc, char **argv) 
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    errmsg = NULL;
    void *state = hot_redrawer();
    InitWindow(800, 500, "main window");
    while(!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        if(IsKeyPressed(KEY_R))
            state = hot_redrawer();
        if(errmsg == NULL) 
            matdraw(state);
        else
            DrawText(errmsg, 0, 0, 20, RED);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}

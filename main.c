#pragma once
#include <LCMaths.h>

int main(int argc, char const *argv[])
{
    m4 proj;
    proj = Rotation(proj, 90, (vec3){1.0, 0.0, 0.0});

    for (;;)
    {
        int axis;
        scanf("\n%d\n", &axis);
        if(axis == 1)
            proj = Rotation(proj, 90, (vec3){1.0, 0.0, 0.0});   
        else if(axis == 2)
            proj = Rotation(proj, 90, (vec3){0.0, 1.0, 0.0});
        else if(axis == 3)
            proj = Rotation(proj, 90, (vec3){0.0, 0.0, 1.0});
        
        printf("\n");
        LogM4(proj);
    }


    return 0;
}

/// @description Cycle between colours

if (state == 1) {

    alarm[2] = 2;
    color++;
    if (color > 8)
        color = 0;
}
else
    color = 0;


/// @description Draw Passin' chuck

//Inherit event from parent
event_inherited();

//Draw the ball
if (ready == 1)
    draw_sprite_ext(spr_football, 0, round(x)+18*sign(xscale), y+1, xscale, 1, 0, c_white, 1);

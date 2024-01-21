/// @description The player warping through a pipe

//Default variables
destination = noone;
exit_dir = 0;
exit_id = -1;

//Whether the player can exit the pipe
ready = 0;

//Whether the player can move
canmove = 1;

//Whether the player is holding an item
holding = 0;

//Handle the held item sprite and frame
myitem = -1;
myframe = 0;

//Handle the palette of the player when invincible
isflashing = 0;
alarm[2] = 1;


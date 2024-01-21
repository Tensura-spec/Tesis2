/// @description Football

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Jumps
jumping = 0;

//Death Sprite
deathsprite = sprite_index;

//Stomp sprite
stompsprite = sprite_index;

//Do not turn around on enemies
enemyturn = false;

//Animate
image_speed = 0;

//Start moving
alarm[10] = -1;

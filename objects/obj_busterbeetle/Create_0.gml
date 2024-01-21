/// @description Buster Beetle

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 1;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_busterbeetle_dead;

//Stomp Sprite
stompsprite = spr_busterbeetle_dead;

//Brick variable
mybrick = noone;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

/// @description Yellow Koopa

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Death Sprite
deathsprite = spr_koopa_yellow_dead;

//Wing animation
anim = 0;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

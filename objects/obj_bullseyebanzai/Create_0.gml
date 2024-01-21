/// @description Bulls-eye Banzai Bill

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 3;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Death Sprite
deathsprite = spr_bullseyebanzai_dead;

//Stomp sprite
stompsprite = spr_bullseyebanzai_dead;

//Animate
image_speed = 0;

//Previous direction
lastdir = direction;

//Follow the player
homing = false;
alarm[0] = 60;


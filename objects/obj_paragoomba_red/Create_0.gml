/// @description Para-Goomba

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_goomba_red_dead;

//Stomp sprite
stompsprite = spr_goomba_red_sq;

//Animate
image_speed = 0.15;
wing_anim = 0;

//Whether this object is jumping
jumping = 0;

//Start moving
alarm[10] = 2;

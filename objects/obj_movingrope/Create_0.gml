/// @description Track Rope Engine

//Default value
//Length of the rope (In blocks)
ropelength = 4;

//Animate
image_speed = 0.15;

//State
state = "IDLE";

//Speed
spd = 1;

//Origin
xorig = sprite_width/2-1;
yorig = sprite_height/2-1;

//Steps to take per steps
step = 0;

//Whether this engine has a rope
myrope = noone;

//Whether the engine jumped from a track
ready = 0;

//Direction
direct = 270;

//Create a rope
alarm[1] = 2;

//Play 'Engine' sound
alarm[2] = 15;

//Smoke position
post = 0;

//Set up direction based on modifier
if (place_meeting(x, y, obj_up)) {

    direct = 90;
    state = "IN_LINE";
}
else if (place_meeting(x, y, obj_down)) {

    direct = 270;
    state = "IN_LINE";
}
else if (place_meeting(x, y, obj_left)) {

    direct = 180;
    state = "IN_LINE";
}
else if (place_meeting(x, y, obj_right)) {

    direct = 0;
    state = "IN_LINE";
}


/// @description Torpedo Ted Launcher

//Do not animate
image_speed = 0;
image_index = 0;

//Whether the launcher is going to drop a torpedo
ready = 0;

//Glove variables
gx = -1;
gy = 0;
gi = 0;

//Launch torpedo
alarm[0] = 100;

//Make this object solid
mysolid = instance_create(x, y, obj_solid);
with (mysolid) {

    image_xscale = 2;
    image_yscale = 2;
}


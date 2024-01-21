/// @description Throw the ball

//Set the sprite
sprite_index = spr_spike;

//Throw the previously created ball
with (myball) {

    //Set the vertical speed
    vspeed = -2.5;
    
    //Set the horizontal speed
    hspeed = 1.75*sign(other.xscale);    
    
    //Boost
    y--;
    
    //Apply physics
    ready = 1;
}

//Start moving
alarm[10] = 15;


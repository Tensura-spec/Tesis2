/// @description Walrus logic

//Previous hspeed
prevhspeed = hspeed;

//Inherit event from parent
event_inherited();

//If the direction changed
if (hspeed != prevhspeed) 
&& (sprite_index != spr_walrus_turn) {

    //Set turning sprite
    sprite_index = spr_walrus_turn;
    
    //Animate it
    image_speed = 0.3;
    image_index = 0;
}

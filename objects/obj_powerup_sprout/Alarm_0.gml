/// @description Item check

//Feather
if (sprite_index == spr_feather) {

    //Play 'Sprout' sound
    audio_stop_play_sound(snd_sprout, 0, false);

    //Turn into a real feather
    instance_create(x, ystart, obj_feather_sprout);
}

//Beanstalk
else if (sprite_index == spr_beanstalk) {

    //Play 'Vine Sprout' sound
    audio_stop_play_sound(snd_vinesprout, 0, false);
    
    //Turn into a real beanstalk
    if (!place_meeting(x, ystart-16, obj_solid))
        instance_create(x, ystart, obj_beanstalk);
    else
        with (instance_create(x+1, ystart, obj_beanstalk)) vspeed = 1;
}
    
//Otherwise
else {

    //Play 'Sprout' sound
    audio_stop_play_sound(snd_sprout, 0, false);
    
    //If moving up...
    if (vspeed < 0) {
    
        //...and the sprite is one of the following, make it bounce.
        if (sprite_index == spr_pswitch)
        || (sprite_index == spr_gswitch)
        || (sprite_index == spr_trampoline)
        || (sprite_index == spr_powblock_blue)
        || (sprite_index == spr_detonator)
        || (sprite_index == spr_key)
        || (sprite_index == spr_egg)
        || (sprite_index == spr_egg_r)
        || (sprite_index == spr_egg_y)
        || (sprite_index == spr_egg_b)  
        || (sprite_index == spr_watermelon_fire)
        || (sprite_index == spr_watermelon_ice)
        || (sprite_index == spr_watermelon_bomb) {
        
            //Set vertical speed
            vspeed = -2.5;
            gravity = 0;
            
            //Deny solid check
            ready = 1;
            alarm[1] = -1;
            
            //Make it bounce outside the block
            bouncy = 1;
        }
    }
    
    //Exit
    exit;
}

//Destroy
instance_destroy();


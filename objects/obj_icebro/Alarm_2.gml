/// @description Throw another iceball

//If there's not gravity
if (yadd == 0) {
	
	//Play 'Iceball' sound
	audio_play_sound(snd_iceball, 0, false);
    
    //If Mario does not exist or it's at the left
    if (!instance_exists(obj_mario)) 
	|| (obj_mario.x < x) {
        
        with (instance_create_depth(x, y-4, -2, obj_icebro_iceball)) {
            
            xspeed = -1.2;
            image_xscale = -1;
        }
    }
        
    //Otherwise, if the player is at the left.
    else {
        
        with (instance_create_depth(x, y-4, -2, obj_icebro_iceball)) {
            
            xspeed = 1.2;
            image_xscale = 1;
        }
    }
    
    //Next
    alarm[3] = 30;
}
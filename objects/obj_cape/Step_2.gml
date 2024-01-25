/// @description Manage cape

#region PLAYER SYNC

	//If the player does exist
	if (instance_exists(owner)) {

		//Move towards the player
		x = owner.x;
		y = owner.y;
	
		//Hereby palette
		isflashing = owner.isflashing;
    
		//Hereby facing direction
		image_xscale = owner.xscale;
	
		//Hereby angle
		image_angle = owner.angle;
		
		// Set cape depth
		switch (owner.state) {
			
			default:
				depth = owner.depth + 1;
				break;
				
			case (playerstate.climb):
				depth = owner.depth - 1;
				break;
			
		}
	
		//Climbing
		if (owner.state == playerstate.climb)
			state = capestate.cape_climb;
	
		//Spinning
		else if (owner.spin != noone)
			state = capestate.cape_spin_up;	
	
		//Grounded
		else if (owner.yadd == 0 && owner.yspeed == 0) {
		
			//If walking/sliding/etc.
			if (owner.xspeed != 0)
				state = capestate.cape_walk;
			
			//If idle
			else {
				
				state = capestate.cape_idle;
			}		
		}
	
		else {
		
			// Not spin jumping or riding kuribo shoe
			if (owner.jumpstyle == 0) || (global.mount == 2) {
			
				// If they're flying
				if (owner.flying == true)
					state = capestate.cape_walk;
		
				// If going up
				else if (owner.yspeed <= 0) {
				
					if (owner.swimming)
						state = capestate.cape_walk;
					else
						state = capestate.cape_jump_up;
				} 
				else 
					state = capestate.cape_jump_down;
			}
		
			// Spin jumping
			else {
			
				// If going up
				if (owner.yspeed <= 0)
					state = capestate.cape_spin_up;
				else
					state = capestate.cape_spin_down;						
			}		
		}		
	}
	else
		exit;
	
#endregion

#region ANIMATION

	//Cape - Idle
	if (state == capestate.cape_idle) {

		//If the following cape sprites are not used
		if (sprite_index != spr_cape)
		&& (sprite_index != spr_cape_down) {
    
		    //Set up the sprite
		    sprite_index = spr_cape_down;
        
		    //Animate
		    image_speed = 0.1;
		    image_index = 0;
		}
	}

	//Cape - Walk
	else if (state == capestate.cape_walk) {

		//If the following cape sprites are not used
		if (sprite_index != spr_cape_up)
		&& (sprite_index != spr_cape_walk) {
    
		    //Set up the sprite
		    sprite_index = spr_cape_up;
        
		    //Animate
		    image_speed = 0.2;
		    image_index = 0;
		}
    
		//If the following cape sprite is being used, update based on xspeed
		if (sprite_index == spr_cape_walk) {
    
		    if ((owner.flying > 0) && (owner.jumpstyle == 0 || global.powerup != cs_cape))
		        image_speed = 0.15;
		    else
		        image_speed = 0.065+abs(owner.xspeed)/7.5;
		}
	}

	//Cape - Jump Up
	else if (state == capestate.cape_jump_up) {

		//If the following cape sprite are not used
		if (sprite_index != spr_cape)
		&& (sprite_index != spr_cape_down) {
    
		    //Set up the sprite
		    sprite_index = spr_cape_down;
        
		    //Animate
		    image_speed = 0.2;
		    image_index = 0;
		}
	}

	//Cape - Jump Down
	else if (state == capestate.cape_jump_down) {

		//If the following cape sprite are not used
		if (sprite_index != spr_cape_up)
		&& (sprite_index != spr_cape_fall) {
    
		    //Set up the sprite
		    sprite_index = spr_cape_up;
        
		    //Animate
		    image_speed = 0.2;
		    image_index = 0;
		}
	}

	//Cape - Spin Up
	else if (state == capestate.cape_spin_up) {

		//Set up the sprite
		sprite_index = spr_cape_spin;
    
		//Animate
		image_speed = 0.5;
	}

	//Cape - Spin Down
	else if (state == capestate.cape_spin_down) {

		//Set up the sprite
		sprite_index = spr_cape_spin_fall;
    
		//Animate
		image_speed = 0.5;
	}

	//Cape - Climb
	else if (state == capestate.cape_climb) {

		//Set up the sprite
		sprite_index = spr_cape_climb;
    
		//Do not animate
		image_speed = 0;
		image_index = 0;
	}
    
	//Set up idle frame
	if (sprite_index == spr_cape)
		image_index = global.mount;
		
#endregion

//If Mario is not riding a Yoshi
if (global.mount == 0) {
	
	//Always visible
	visible = (instance_number(obj_mario_balloon) == 0) ? true : false;
	
	//If Mario is climbing
	if (owner.state == playerstate.climb)
		depth = -6;
	else
		depth = -4;
}

//Otherwise, if Mario is riding a Yoshi
else if (global.mount == 1) {

	//If Mario is not moving horizontally
	if (owner.state == playerstate.idle)
	|| (owner.state == playerstate.jump)
		depth = -6;
	else
		depth = -4;
}
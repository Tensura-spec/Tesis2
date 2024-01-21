/// @description Make Mario interact with the item

//If the item is not being held
if (!held) {

    //If Mario is above and moving down, stomp the trampoline.
	if (other.yspeed > 0)
    && (other.bbox_bottom < bbox_top-yspeed+5) {
    
        //Animate
        image_speed = 0.4;
        
        //Player logic
        with (other) {
        
            //Stop horizontal movement
            xspeed = 0;
            
            //Stop vertical movement
            yspeed = 0;
            if (yadd > 0)
                yadd = 0;
        }
        
        //Trampoline is ready
        ready = 1;
        ready2 = 1;
        
        //Make sure to reset the player variables
        with (other) event_user(15);
    }
    
    //Otherwise, if the player can pick up the item
    else if (can_hold())
    && (ready2 == 0)
    && (inwall == false)
    && (other.bbox_bottom > bbox_top) {
    
        //Make the player hold it
        other.holding = 2;
        
        //Hold
        held = 1;
        
        //Stop movement
		xspeed = 0;
        yspeed = 0;
        yadd = 0;
    }
}

#region MARIO LOGIC

	//If the spring is ready
	if (ready) {

		//Force 'Idle' state, disable gravity and set y position
		obj_mario.state = playerstate.idle;
		obj_mario.disablegrav = 1;
		obj_mario.jumping = 2;
		obj_mario.sliding = 0;
		obj_mario.y = self.y+(image_index*2)-14;
	}

#endregion
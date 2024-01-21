/// @description player_crouch();
function player_crouch() {

	/*
	**  Name:
	**      player_crouch();
	**
	**  Function:
	**      Returns the appropiate crouch sprite for the player
	*/

	//Check powerup
	switch (global.powerup) {

	    //Small
	    case (cs_pow_small): {
    
	        //Mario
	        if (global.player == 0)
	            return spr_mario_small_crouch;
            
	        //Luigi
	        else if (global.player == 1)
	            return spr_luigi_small_crouch;
            
	        //Toad
	        else if (global.player == 2)
	            return spr_toad_small_crouch;
            
	        //Peach
	        else if (global.player == 3)
	            return spr_peach_small_crouch;
	    } break;
    
	    //Default
	    default: {
    
	        //Mario
	        if (global.player == 0)
	            return spr_mario_big_crouch;
            
	        //Luigi
	        else if (global.player == 1)
	            return spr_luigi_big_crouch;
            
	        //Toad
	        else if (global.player == 2)
	            return spr_toad_big_crouch;
            
	        //Peach
	        else if (global.player == 3)
	            return spr_peach_big_crouch;
	    } break;
	}



}

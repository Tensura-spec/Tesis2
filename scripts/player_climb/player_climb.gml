/// @description player_climb();
function player_climb() {

	/*
	**  Name:
	**      player_climb();
	**
	**  Function:
	**      Returns the appropiate climb sprite for the player
	*/

	//Check powerup
	switch (global.powerup) {

	    //Small
	    case (cs_pow_small): {
    
	        //Mario
	        if (global.player == 0)
	            return spr_mario_small_climb;
            
	        //Luigi
	        else if (global.player == 1)
	            return spr_luigi_small_climb;
            
	        //Toad
	        else if (global.player == 2)
	            return spr_toad_small_climb;
            
	        //Peach
	        else if (global.player == 3)
	            return spr_peach_small_climb;
	    } break;
    
	    //Default
	    default: {
    
	        //Mario
	        if (global.player == 0)
	            return spr_mario_big_climb;
            
	        //Luigi
	        else if (global.player == 1)
	            return spr_luigi_big_climb;
            
	        //Toad
	        else if (global.player == 2)
	            return spr_toad_big_climb;
            
	        //Peach
	        else if (global.player == 3)
	            return spr_peach_big_climb;
	    } break;
	}



}

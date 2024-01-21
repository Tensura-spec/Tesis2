/// @description Toad Host logic

//If Toad is done explaining
if (ready == 1) 
&& (obj_mario_host.ready == 1) {
	
    if (!instance_exists(obj_message)) {
		
		//Go to the minigame
        ready = 2;
		
		//If not fade in object exists
		if (instance_number(obj_fade_in) == 0) {
		
			//Go to the desired minigame
			switch (global.minigame) {
		
				//N-Spade Minigame
				case (0): {
				
					with (instance_create_depth(0, 0, -99, obj_fade_in))
						target = rm_minigame_card;
				} break;
				
				//Digging Minigame
				case (1): {
				
					with (instance_create_depth(0, 0, -99, obj_fade_in))
						target = rm_minigame_dig;
				} break;
				
				//Picture Minigame
				case (2): {
				
					with (instance_create_depth(0, 0, -99, obj_fade_in))
						target = rm_minigame_picture;
				} break;
				
				//1-UP Minigame
				case (3): {
				
					with (instance_create_depth(0, 0, -99, obj_fade_in))
						target = rm_minigame_1up;
				} break;
			}
		}
	}
}

//Make Mario look at the door
if (ready == 1)
&& (!instance_exists(obj_message))
    with (obj_mario_host) ready = 1;
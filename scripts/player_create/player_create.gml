/// @description player_create(x,y)
function player_create() {

	/*
	**  Usage:
	**      player_create(x,y)
	**
	**  Given:
	**      x           X Coordinate
	**      y           Y Coordinate
	**
	**  Purpose:
	**      Creates the player object at the desired x and y coordinate.
	*/

	switch (global.player) {

	    //Mario
	    case (0): return instance_create(argument[0], argument[1], obj_mario);
    
	    //Luigi
	    case (1): return instance_create(argument[0], argument[1], obj_luigi);
    
	    //Toad
	    case (2): return instance_create(argument[0], argument[1], obj_toad);
    
	    //Peach
	    case (3): return instance_create(argument[0], argument[1], obj_peach);
	}



}

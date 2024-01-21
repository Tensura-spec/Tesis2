/// @description sprite_get_powerup(sprite_index)
function sprite_get_powerup() {

	/*
	**  Usage:
	**      sprite_get_powerup(sprite_index)
	**
	**  Given:
	**      variable    A sprite
	**
	**  Returns:
	**      The powerup the sprite will give
	*/

	switch (argument[0]) {

	    //Mushroom
	    case (spr_mushroom): return cs_pow_super; break;
    
	    //Fireflower
	    case (spr_fireflower): return cs_pow_fire; break;
    
	    //Feather
	    case (spr_feather): return cs_pow_cape; break;
    
	    //Iceflower
	    case (spr_iceflower): return cs_pow_ice; break;
	}



}

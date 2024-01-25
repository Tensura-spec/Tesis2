/// @description Get extra life

#region EFFECT

	//Repeat 16 times
	repeat (16) {
	
		with (instance_create_depth(x, y+8, -2, obj_sparkle)) {
	
			sprite_index = spr_sparkle_e;
			motion_set(random(360), random(1.5));
		}
	}

	//Create effect
	with (instance_create_depth(x, y+8, -6, obj_blend_ring)) {
	
		beam = true;
		image_blend = make_colour_rgb(160, 232, 32);
	}
#endregion

//Get 1 extra life
with (instance_create_depth(x, y, -6, obj_score)) value = -1;

//Destroy
instance_destroy();
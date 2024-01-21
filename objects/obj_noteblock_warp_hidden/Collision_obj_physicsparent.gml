/// @description If the objects given below overlaps the block from below, reveal block

//If the object is moving up and it's jumping
if (other.object_index == obj_mario_balloon)
if (other.yspeed < 0)
&& (other.bbox_top > bbox_bottom + other.yspeed) {
	
	//Play 'Bump' sound
	audio_play_sound(snd_bump, 0, false);
	
	//Stop object
	other.yspeed = 0;

	//Create a new block, give it the same room id and bump it.
	with (instance_create_depth(x, y, 9, obj_noteblock_warp)) {
		
		//Set the room to warp into
		destination = other.destination;
		
		//Set the warp id
		exit_id = other.exit_id;
	
		//Set state to bumped
		ready = 1;
						
		//Set horizontal speed
		vspeed = -2;
		alarm[0] = 4;	
	}
	
	//Destroy
	instance_destroy();
}
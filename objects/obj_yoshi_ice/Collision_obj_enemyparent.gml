/// @description Turn into Ice

//If the enemy is vulnerable
if (other.vulnerable < 2) {
	
	//If the enemy has a width and a height of over 48 pixels, do not freeze
	if (sprite_width > 48)
	&& (sprite_height > 48) {
	
		event_user(0);
		exit;
	}
	
	//Play 'Freeze' sound
	audio_play_sound(snd_freeze, 0, false);
	
	//Create a frozen enemy
	frozen = instance_create_depth(other.x, other.y, -2, obj_enemy_frozen);
	
	//Hereby sprite
	#region SPRITE
	
		if (other.freeze_sprite != -1)
			frozen.sprite_index = other.freeze_sprite;
		else
			frozen.sprite_index = other.sprite_index;
	
	#endregion
	
	//Hereby frame
	frozen.image_index = other.image_index;
	
	//Hereby object
	frozen.ret = other.object_index;
	
	//Destroy
	with (other) instance_destroy();
}
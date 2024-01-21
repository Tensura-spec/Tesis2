/// @description Split into 2 Goombrats

//Play 'Split' sound
audio_play_sound(snd_split, 0, false);
	
//Create big smoke
with (instance_create_depth(x, y, -6, obj_smoke)) {
	
	image_xscale = 2;
	image_yscale = 2;
}

//Create 2 Goombrats
with (instance_create_depth(x+8, y, -2, obj_goombrat)) { yspeed = -3; xspeed = 0.5; }
with (instance_create_depth(x-8, y, -2, obj_goombrat)) { yspeed = -3; xspeed = -0.5; }
	
//Destroy
instance_destroy();
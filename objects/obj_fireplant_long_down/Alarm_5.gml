/// @description Spit another fireball

//Play 'Burn' sound
audio_stop_play_sound(snd_burn, 0, false);

//Create fireball
fire = instance_create(x, y+8, obj_plantfire);
fire.direction = direct;


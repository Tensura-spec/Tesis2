/// @description init_shake(time)
function init_shake() {

	/*
	**  Usage:
	**      init_shake(time)
	**
	**  Given:
	**      time        Time (in steps) to shake the screen
	**
	**  Returns:
	**      Makes the screen shake for the time the sound plays given in argument0
	*/

	var len = audio_sound_length(argument[0]);

	//Make the screen shake
	obj_controller1.shake = true;

	//Set the time to shake the screen
	obj_controller1.alarm[8] = (room_speed * len);
	obj_controller1.alarm[9] = 1;



}

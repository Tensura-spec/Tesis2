/// @description Break blocks if Mario is giant

//Check for Mario
var mario = collision_rectangle(bbox_left-6, bbox_top-6, bbox_right+6, bbox_bottom+8, obj_mario, 0, 0);

//If Mario does exist
if (mario) 
&& (global.powerup == cs_mega)
&& (instance_exists(obj_megashroom_timer))
	event_user(15);
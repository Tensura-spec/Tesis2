/// @description Move towards Mario

//If Mario does not exist or Mario is at the left
if (!instance_exists(obj_mario))
|| (obj_mario.x < x)
	xspeed = -1;
else
	xspeed = 1;

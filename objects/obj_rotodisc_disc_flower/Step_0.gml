/// @description Update disc position

//Do not move if Mario is dead or transforming
if (!instance_exists(obj_mario_dead))
&& (!instance_exists(obj_mario_transform)) {

	//Set position
	angle += speedd*(clockwise*-1);
	x = xstart + 8 + lengthdir_x(radius, angle);
	y = ystart + 8 + lengthdir_y(radius, angle);

	//Update radius
	if ((radius <= maxradius) && (step == 0)) {

	    radius += speedd;
	    if (radius >= maxradius) {
    
	        radius = maxradius; 
	        step = 1;
	    }
	}
	else if ((radius >= 0) && (step == 1)) {

	    radius -= speedd;
	    if (radius <= 0) {
    
	        radius = 0; 
	        step = 0;
	    }
	}
}

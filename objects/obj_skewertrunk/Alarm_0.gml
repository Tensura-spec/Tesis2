/// @description Go down a bit

//If the object is not inside the view, deny event
if (outside_view(64)) {

    alarm[0] = 1;
    exit;
}

//Set the vertical speed
vspeed = 1;

//Stop it
alarm[1] = 32;


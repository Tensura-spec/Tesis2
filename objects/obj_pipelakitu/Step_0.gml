/// @description Pipe Lakitu Logic

//If moving up
if (ready == 1) {

    y -= 0.5;
    if (y < ystart-16) {
    
        y = ystart-16;
        ready = 2;
    }
}

//Otherwise, if out of the pipe
else if (ready == 2) {

    //If the player does not exist of it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//Otherwise, if coming out of the pipe
else if (ready == 3) {

    y -= 0.5;
    if (y < ystart-11) {
    
        y = ystart-11;
        ready = 0;
        alarm[0] = 40;
        alarm[1] = 160;
    }
}


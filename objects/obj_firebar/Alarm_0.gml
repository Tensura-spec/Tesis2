/// @description Create firebar

for (var i=0; i<length; i++) {

    with (instance_create(x, y, obj_firebar_ball)) {
    
        mom = other.id;
        length = other.dist;
    }
    dist += 8;
}


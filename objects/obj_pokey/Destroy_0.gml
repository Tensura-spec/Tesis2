/// @description If this object is the head, kill the entire body

if (image_index == 0) {

    with (mebelow) {
    
        //Create dead body effect
        with (instance_create(x, y, obj_pokey_dead)) {
        
            //Set up the sprite
            sprite_index = other.sprite_index;
        }
        
        //Perform events
        event_user(1);
        
        //Destroy
        instance_destroy();
    }
}


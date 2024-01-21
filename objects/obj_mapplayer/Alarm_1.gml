/// @description Save the game

//Normal exit
if (!savegame && !global.alt_save) {
    
    status = mapstate.idle;
    exit;
    
}

//Otherwise, save

//If autosaving is enabled
if (global.autosave == 1) {

    save(global.file);
    status = mapstate.idle;
    obj_hud_map.show_saved = true;
    obj_hud_map.alarm[0] = 90;
    
} else {

    //Create save object
    instance_create(0,0,obj_save);
    
}
    
savegame = false;


	object_set_persistent(objSystem, false);
	object_set_persistent(objInteractive, false);
	object_set_persistent(objTextbox, false);
	object_set_persistent(Timer, false);
	
	instance_destroy(objSystem);
	instance_destroy(objInteractive);
	instance_destroy(Timer);
	
	instance_destroy(obj_up);
	instance_destroy(obj_down);
	instance_destroy(obj_right);
	instance_destroy(obj_left);
	instance_destroy(obj_interact);
	instance_destroy(obj_prizes);

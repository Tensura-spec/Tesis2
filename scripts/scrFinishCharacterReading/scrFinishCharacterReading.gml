function scrFinishCharacterReading(player) {
	player.state = STATE_IDLE;

}


function scrFinishCharacterReadingP(player) {
	player.state = STATE_IDLE;
	room_goto(PoliDeportivoPong);
}

function scrFinishCharacterReadingM(player) {
	player.state = STATE_IDLE;
	room_goto(PatioDeComidas);
}

function scrFinishCharacterReadingMedalla1(player) {
	player.state = STATE_IDLE;
	obj_controller1.medalla1 = 1;
}

function scrFinishCharacterReadingMedalla2(player) {
	player.state = STATE_IDLE;
	obj_controller1.medalla2 = 1;
}

function scrFinishCharacterReadingMedalla3(player) {
	player.state = STATE_IDLE;
	obj_controller1.medalla3 = 1;
}

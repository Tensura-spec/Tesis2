function scrFinishCharacterReading(player) {
	player.state = STATE_IDLE;
	goto = 1;
}


function scrFinishCharacterReadingP(player) {
	player.state = STATE_IDLE;
	room_goto(PoliDeportivoPong);
}

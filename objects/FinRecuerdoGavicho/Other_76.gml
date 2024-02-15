
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];
var _elementID = event_data[? "element_id"];

if (_eventType == "sequence event" ) 
{
	if (obj_controller1.medalla3 == 0)
	{
	switch (_message) {
		case "SequenceEnd3":
			room_goto(PoliDeportivoEntrada);
		break;
	}
	}
	
	if (obj_controller1.medalla3 == 1)
	{
	switch (_message) {
		case "SequenceEnd3":
			obj_Position.levelcomplete = 1;
			room_goto(rm_worldmap);
		break;
	}

	}
}
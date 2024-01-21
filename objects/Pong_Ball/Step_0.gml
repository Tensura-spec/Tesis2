if(Player_Score >= 3)
{
	//obj_Position.levelcomplete = 1;
	
	room_goto(GavichoRecuerdo);
}

if(AI_Score >= 3)
{
	room_goto(GameOver);
}
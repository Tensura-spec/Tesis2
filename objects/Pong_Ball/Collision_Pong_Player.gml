/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64EA1431
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "Pong_Player.y"
if(y < Pong_Player.y)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 780B026B
	/// @DnDParent : 64EA1431
	/// @DnDArgument : "expr" "25+random(40)"
	/// @DnDArgument : "var" "direction"
	direction = 25+random(40);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 16BB00DE
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39C536D7
	/// @DnDParent : 16BB00DE
	/// @DnDArgument : "expr" "295+random(40)"
	/// @DnDArgument : "var" "direction"
	direction = 295+random(40);
}
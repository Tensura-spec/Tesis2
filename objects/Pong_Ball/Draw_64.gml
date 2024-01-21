/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1DB1F562
/// @DnDArgument : "font" "Score_Font"
/// @DnDSaveInfo : "font" "Score_Font"
draw_set_font(Score_Font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 782B3C9A
draw_set_colour($FFFFFFFF & $ffffff);
var l782B3C9A_0=($FFFFFFFF >> 24);
draw_set_alpha(l782B3C9A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 513DA322
/// @DnDArgument : "x" "270"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "Player_Score"
draw_text(270, 30,  + string(Player_Score));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 15FD0C84
/// @DnDArgument : "x" "370"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "AI_Score"
draw_text(370, 30,  + string(AI_Score));
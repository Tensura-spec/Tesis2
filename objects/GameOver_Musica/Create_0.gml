/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 0E68B733
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 58B06665
/// @DnDArgument : "soundid" "GameOver_Music"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "GameOver_Music"
audio_play_sound(GameOver_Music, 0, 1, 1.0, undefined, 1.0);
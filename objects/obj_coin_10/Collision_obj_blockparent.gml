/// @description Collect the coin

//Play 'Big Coin' sound
audio_stop_play_sound(snd_coin_big, 0, false);

//Increment coins
global.coins += 10;

//Create a sparkle
instance_create(x+8, y+8, obj_sparkle);

//Get 100 points
with (instance_create(x, y, obj_score)) event_user(1);

//Destroy
instance_destroy();

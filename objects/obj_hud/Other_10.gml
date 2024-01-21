/// @description Default HUD

//X position
var _xx = 0;
var _ww = display_get_gui_width();

//Y Position
var _yy = 0;
var _yp = 0;

//Set font
draw_set_font(global.fontnumb);

//Set colour
draw_set_colour(c_white);

//Lives
draw_sprite_ext(spr_hud_mario, global.player, _xx+16, _yy+15-_yp, 1, 1, 0, c_white, 1);
draw_text(_xx+32, _yy+23, string_hash_to_newline(string_format(lives, 2, 0)));

//Ace Coins
var a = 0;
if (ds_map_size(displaydragoncoins) < 5) {
    
    repeat (ds_map_size(displaydragoncoins)) {
    
        draw_sprite_ext(spr_hud_acecoins, 0, _xx+64+a, _yy+15-_yp, 1, 1, 0, c_white, 1);    
            a += 8;
    }
}
else
draw_sprite_ext(spr_hud_acecoins, 1, _xx+64, _yy+15-_yp, 1, 1, 0, c_white, 1);

//Set font
draw_set_font(global.fontnumblarge);

//Bonus
draw_sprite_ext(spr_hud_stars, image_index, _xx+72, _yy+23-_yp, 1, 1, 0, c_white, 1);
draw_text(_xx+96, _yy+15-_yp, string_hash_to_newline(string_format(global.bonus, 2, 0)));

//Reserve Box
draw_sprite_ext(spr_hud_reserve, image_index, _xx + _ww/2, _yy+8-_yp, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_hud_reserve_item, global.reserveitem, _xx + _ww/2, _yy+14-_yp, 1, 1, 0, c_white, 1);

//Set font
draw_set_font(global.fontnumbgold);

//Timer
draw_sprite_ext(spr_hud_time, image_index, _xx+_ww-104+shakex, _yy+15+shakey-_yp, 1, 1, 0, c_white, 1);

//Show regular time if the stage is not clear
if (clear == 0) {
    
    if (global.time > -1) {
    
        //If the level has not been cleared and the timer is lower than 100
        if (global.clear == 0)
        && (global.time <= 100) {
        
            draw_text_colour(_xx+_ww-104+shakex, _yy+23+shakey-_yp, string_hash_to_newline(string_format(displaytime, 3, false)), c_white, c_white, c_white, c_white, 1);
            draw_text_colour(_xx+_ww-104+shakex, _yy+23+shakey-_yp, string_hash_to_newline(string_format(displaytime, 3, false)), c_red, c_red, c_red, c_red, fade);
        }
        else
            draw_text_colour(_xx+_ww-104, _yy+23-_yp, string_hash_to_newline(string_format(displaytime, 3, 0)), c_white, c_white, c_white, c_white, 1);
    }
    else
        draw_text_colour(_xx+_ww-104, _yy+23-_yp, string_hash_to_newline("  0"), c_white, c_white, c_white, c_white, 1);
}
else {

    draw_text_colour(_xx+_ww-104, _yy+23-_yp, string_hash_to_newline(string_format(obj_hud.time, 3, false)), c_white, c_white, c_white, c_white, 1);
}

//Set font
draw_set_font(global.fontnumb);

//Coins
draw_sprite_ext(spr_hud_coins, image_index, _xx+_ww-56, _yy+15-_yp, 1, 1, 0, c_white, 1);
draw_text(_xx+_ww-32, _yy+15-_yp, string_hash_to_newline(string_format(global.coins, 2, false)));

//Score
draw_text(_xx+_ww-72, _yy+23-_yp, string_hash_to_newline(string_format(score, 7, false)));

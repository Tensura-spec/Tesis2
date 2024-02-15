if (!active) { exit; }

draw_self();

	var posy = 16;


	draw_sprite(sprMiguelRuaMedalla, obj_controller1.medalla1, x + 7, y + 5 + posy);

	draw_set_font(global.TEXTBOX_FONT);
	draw_text(x + 45, y + 10 + posy, + "Miguel Rua" );
	
	draw_sprite(GavichoMedalla_sprt, obj_controller1.medalla2, x + 7, y + 40 + posy);

	draw_set_font(global.TEXTBOX_FONT);
	draw_text(x + 45, y + 50 + posy, + "Gavicho" );
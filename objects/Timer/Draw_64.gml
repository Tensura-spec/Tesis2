// Draw Event of obj_timer object
   draw_set_font(FuenteMiguelRua);
   draw_set_color(c_white);
   draw_text(display_get_gui_width()*0.85, display_get_gui_height()*0.1, "Time: " + string(timer_current_seconds)); // Draw the current timer value on the screen
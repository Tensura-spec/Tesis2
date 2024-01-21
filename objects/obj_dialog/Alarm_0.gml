/// @description Prepare the message to be displayed

//Make sure that the font is correct before formatting
draw_set_font(font);

//Format the text to the correct width
text = string(string_make_width(varmsg, 173));

//The text that should display next if it is too long
newtext = "";

//Split up the message if it is too long
event_user(0);

//The text should start displaying now
showing = true;


text = "click screen to start";


if window_get_fullscreen() {
	pos_x = display_get_gui_width()/2 - string_width(text) / 2;
	pos_y = display_get_gui_height()/2 - string_height(text) / 2;
}
else {
	pos_x = window_get_width() / 2 - string_width(text) / 2;
	pos_y = window_get_height() / 2 - string_height(text) / 2; 
}
if view_visible[0] {
	view_scale = camera_get_view_width(view_camera[0]) /window_get_width();
}
else {
	view_scale = 1;
}

var _x, _y;

if window_get_fullscreen() {
	_x = display_get_gui_width() / 2 * view_scale;
	_y = display_get_gui_height() / 2 * view_scale;
}
else {
	_x = window_get_width() / 2 * view_scale;
	_y = window_get_height() / 2 * view_scale;
}


var _seq = layer_sequence_create("UI_and_Controller", _x, _y, seq_gui_esc_menu);
var _esc_menu = layer_sequence_get_sequence(_seq);
esc_menu_obj_list = sequence_get_objects(_esc_menu);


menu_open = false;
menu_previous = !menu_open;
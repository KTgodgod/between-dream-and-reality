var _wm_x, _wm_y;
if window_get_fullscreen() {
	_wm_x = device_mouse_x_to_gui(0);
	_wm_y = device_mouse_y_to_gui(0);
}
else {
	_wm_x = window_views_mouse_get_x();
	_wm_y = window_views_mouse_get_y();
}

if (position_meeting(_wm_x, _wm_y, self) || input_value("accept") || input_check_released("accept"))
{
	if (mouse_check_button(mb_left) || input_value("accept")) 
	{
		image_index = 1;
	}
	else 
	{
		image_index = 0;
	}
	
	if (mouse_check_button_released(mb_left) || input_check_released("accept"))
	{
		if (room != rm_challenge)
		{
			__input_clear_all();
			action_when_click();
		} else if (obj_esc_menu.menu_open = true) {
			__input_clear_all();
			action_when_click();
		}
	}
} else {
	
	if (room = rm_challenge && obj_esc_menu.menu_open = true)
	{
		if (input_value("left"))
		{
			room_goto(rm_main_menu);
		}
		
		if (input_value("right"))
		{
			obj_esc_menu.menu_open = false;
		}
	}
	image_index = 0;
}


draw_set_halign(fa_left);
text_scale = max(floor(sprite_height * 0.8 / string_height(text)), 1);
var _scale = text_scale * view_scale;
text_ofs_x = (string_width(text) / 2) * _scale;
text_ofs_y = (string_height(text) / 2) * _scale;

	
//draw backdrop
if selected {
var _alpha = map_value(sin(selected * 0.05), -1, 1, 0.2, 0.3);
	draw_set_alpha(_alpha);
	draw_rectangle(bbox_left * view_scale, bbox_top * view_scale, bbox_right * view_scale, bbox_bottom * view_scale, false);
	draw_set_alpha(1);
}
//draw text
var _ux = x * view_scale;
var _uy = y * view_scale;
draw_text_transformed(_ux - text_ofs_x, _uy - text_ofs_y, text, _scale, _scale, 0);
//draw underline
var _underline_y = _uy + (text_ofs_y);
draw_line_color(_ux - text_ofs_x, _underline_y, _ux, _underline_y, c_black, c_white);
draw_line_color(_ux, _underline_y, _ux + text_ofs_x, _underline_y, c_white, c_black);
//draw hitbox outline
draw_rectangle(bbox_left * view_scale, bbox_top * view_scale, bbox_right * view_scale, bbox_bottom * view_scale, true);
	
//draw sprite
//var _u = view_scale;
//draw_sprite_ext(sprite_index, image_index, x * _u, y * _u, image_xscale * _u, image_yscale * _u, 0, c_white, 1);


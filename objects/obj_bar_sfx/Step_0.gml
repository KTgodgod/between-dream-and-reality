var _wm_x, _wm_y;
if window_get_fullscreen() {
	_wm_x = device_mouse_x_to_gui(0);
	_wm_y = device_mouse_y_to_gui(0);
}
else {
	_wm_x = window_views_mouse_get_x();
	_wm_y = window_views_mouse_get_y();
}
if input_source_using(INPUT_MOUSE) 
{
	var _check_click_press = mouse_check_button_pressed(mb_left)
	var _check_click_released = mouse_check_button_released(mb_left);
}
else if input_source_using(INPUT_GAMEPAD)
{
	var _check_click_press =  input_check_pressed("accept");
	var _check_click_released = input_check_released("accept");
}


if _check_click_press && (position_meeting(_wm_x, _wm_y, self))
{
	hold = true;
}
if _check_click_released {
	hold = false;
}


if hold
{
	global.sfx_vol = clamp(map_value(_wm_x, min_cord, max_cord, 0, 1), 0, 1);
	
}
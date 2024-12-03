/// @description check if selected

var _wm_x, _wm_y;
if window_get_fullscreen() {
	_wm_x = device_mouse_x_to_gui(0);
	_wm_y = device_mouse_y_to_gui(0);
}
else {
	_wm_x = window_views_mouse_get_x();
	_wm_y = window_views_mouse_get_y();
}


if (input_check_pressed("accept") || mouse_check_button_pressed(mb_left)) && position_meeting(_wm_x, _wm_y, self)
{
	selected = true;
}

if selected 
{
	if input_check_released("accept") || mouse_check_button_released(mb_left)
	{
		selected = false;
		action_when_click();
	}
	else if !position_meeting(_wm_x, _wm_y, self)
	{
		selected = false;
	}
}

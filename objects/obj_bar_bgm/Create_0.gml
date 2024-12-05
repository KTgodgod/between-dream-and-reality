if view_visible[0] {
	view_scale = window_get_width() / camera_get_view_width(view_camera[0]);
}
else {
	view_scale = 1;
}

min_cord = x;
max_cord = x + sprite_width;

hold = false;

text = "BGM";
selected = noone;

sel_obj = [obj_button, obj_bar_bgm, obj_bar_sfx];


sel_obj_list = [];
sel_obj_list_previous = noone;

sel_obj_list_sort_y = [];

function sort_y( _obj_a, _obj_b) {
	
	return _obj_a.y - _obj_b.y
}
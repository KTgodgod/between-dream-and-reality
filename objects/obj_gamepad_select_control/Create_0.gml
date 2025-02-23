
sel_obj = [obj_button, obj_bar];//obj that are counted as selectable


sel_ins_list = [];
sel_ins_list_sort_y = [];
sel_ins_i = noone;
sel_ins = noone;//use sel_ins_list_sort_y[sel_ins_i] to define
sel_ins_previous = noone;


selected_alpha = 1;

function sort_y( _obj_a, _obj_b) {
	
	return _obj_a.y - _obj_b.y;
}
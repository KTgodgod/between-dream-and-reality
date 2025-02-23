if input_source_using(INPUT_MOUSE, 0) {
	window_mouse_set_locked(false);
}
else if input_source_using(INPUT_GAMEPAD, 0) {
	window_mouse_set_locked(true);
}

sel_ins_list = [];

//go through all instance of selectable obj and store it in an array
for (var j = 0; j < array_length(sel_obj); ++j) 
{
	var _obj = sel_obj[j];
	for (var i = 0; i < instance_number(_obj); ++i;)
	{
		var _obj_id = instance_find(_obj ,i);
		array_push(sel_ins_list, _obj_id);
	}
}


if array_length(sel_ins_list) == 0 {
	sel_ins_i = noone;
}
else if sel_ins_previous != sel_ins_list[0] 
{
	sel_ins_i = noone;
	sel_ins_previous = sel_ins_list[0];
	sel_ins_list_sort_y = sel_ins_list;
	array_sort(sel_ins_list_sort_y, sort_y);
}
else if input_check_pressed("up") 
{
	if sel_ins_i = noone {
		sel_ins_i = array_length(sel_ins_list) - 1;
	}
	else if --sel_ins_i < 0
	{
		sel_ins_i += array_length(sel_ins_list);
	}
}
else if input_check_pressed("down") 
{
	if sel_ins_i = noone {
		sel_ins_i = 0;
	}
	else if ++sel_ins_i >= array_length(sel_ins_list)
	{
		sel_ins_i -= array_length(sel_ins_list);
	}
}


if input_source_using(INPUT_MOUSE, 0) {
	var _mouse_h = collision_point(input_mouse_x(), input_mouse_y(), sel_obj, false, true);
	if _mouse_h {
		sel_ins_i = array_get_index(sel_ins_list_sort_y,_mouse_h);
	}
	else if input_mouse_check_pressed(mb_left) {
		sel_ins_i = noone;
	}
}

if sel_ins_i != noone {
	sel_ins = sel_ins_list_sort_y[sel_ins_i];
	var _obj = sel_ins;
	var _obj_parent = object_get_parent(_obj.object_index);
	switch (_obj_parent) {
		case obj_button:
			if input_check_pressed("accept") {
				_obj.action_when_click();
			}
			break;
		case obj_bar:
			if input_check_pressed("left") {
				_obj.con_var -= 0.01;
			}
			if input_check_long("left") {
				_obj.con_var -= 0.01;
			}
			if input_check_pressed("right") {
				_obj.con_var += 0.01;
			}
			if input_check_long("right") {
				_obj.con_var += 0.01;
			}
			_obj.con_var = clamp(_obj.con_var, 0, 1)
			break;
		default:
			break;
	}
}
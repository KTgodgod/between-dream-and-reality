sel_obj_list = [];

for (var j = 0; j < array_length(sel_obj); ++j) 
{
	var _obj = sel_obj[j];
	for (var i = 0; i < instance_number(_obj); ++i;)
	{
		var _obj_id = instance_find(_obj ,i);
		array_push(sel_obj_list, _obj_id);
	}
}


if array_length(sel_obj_list) == 0 {
	selected = noone;
}
else if sel_obj_list_previous != sel_obj_list[0] 
{
	selected = noone;
	sel_obj_list_previous = sel_obj_list[0];
	sel_obj_list_sort_y = sel_obj_list;
	array_sort(sel_obj_list_sort_y, sort_y);
}
else if input_check_pressed("up") || input_check_pressed("down")
{
	if selected = noone {
		selected = 0;
	}
	else
	{
		if input_check_pressed("up") && --selected < 0 {
			selected += array_length(sel_obj_list);
		}
		if input_check_pressed("down") && ++selected >= array_length(sel_obj_list) {
			selected -= array_length(sel_obj_list);
		}
	}
}




if selected != noone {
	var _obj = sel_obj_list_sort_y[selected];
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
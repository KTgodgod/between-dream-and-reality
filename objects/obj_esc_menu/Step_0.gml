if (input_check_pressed("pause"))
{
	menu_open = !menu_open;
}

if menu_previous != menu_open {
	for (var i = 0; i < array_length(esc_menu_obj_list); ++i) {
	    if menu_open 
		{
			instance_activate_object(esc_menu_obj_list[i]);
		}
		else {
			instance_deactivate_object(esc_menu_obj_list[i]);
		}
	}
	
	menu_previous = menu_open;
}
if (input_check_pressed("pause")) && menu_open
{
	menu_open = !menu_open;
}

if menu_previous != menu_open {
	for (var i = 0; i < array_length(setting_menu_obj_list); ++i) {
	    if menu_open 
		{
			instance_activate_object(setting_menu_obj_list[i]);
			instance_deactivate_layer("menu_button");
		}
		else {
			instance_deactivate_object(setting_menu_obj_list[i]);
			instance_activate_layer("menu_button");
		}
	}
	
	menu_previous = menu_open;
}
radius = obj_player.target_item_radius;
interactable = false;
ready_to_interact = false;
check_icon = instance_create_layer(x, y, "text", obj_check_icon);
check_icon.visible = false;
timer = 0;
timer_run = false;

choice = 0;
text_des = "options";
options = [];
options[0] = {
	text : "none",
	action : function() {
		//place holder
	}
}

options_length = array_length(options) - 1;//old var
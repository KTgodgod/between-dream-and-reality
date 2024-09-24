event_inherited();

interactable = true;
start_dialog = false;
choice = 0;

text_des = "a golden key";

options[0] = {
	text : "take the key",
	action : function() {
		obj_player.first_dream_key = true;
		instance_create_layer(4100, 568, "player", obj_shadow_1);
		obj_door1d.interactable = true;
		obj_door1d_lock.interactable = false;
		obj_door1_lock.interactable = false;

		other.visible = false;
		other.interactable = false;
	}
}

options[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}

options_length = array_length(options) - 1;
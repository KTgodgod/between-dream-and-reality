event_inherited();

start_dialog = false;
choice = 0;

text_des = "an empty pistol";

options[0] = {
	text : "take the empty pistol",
	action : function() {
		obj_player_o.pistol_real = true;
		other.interactable = false;
	}
}

options[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}

Option_1 = "take the empty pistol"
Option_2 = "leave";


options_length = array_length(options) - 1;
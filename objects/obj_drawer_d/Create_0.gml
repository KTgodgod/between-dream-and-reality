event_inherited();

start_dialog = false;
choice = 0;

text_des = "a loaded pistol";

options[0] = {
	text : "take the loaded pistol",
	action : function() {
		obj_player_o.pistol_dream = true;
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
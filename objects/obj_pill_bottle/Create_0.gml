event_inherited();
interactable = true;
start_dialog = false;
entering_dream = false;
choice = 0;

text_des = "sleeping pills";

options[0] = {
	text : "take the pills",
	action : function() {
		other.uses -= 1;
		obj_player.state = player_state.headache;
		other.entering_dream = true;
	}
}

options[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}

options_length = array_length(options) - 1;
event_inherited();
interactable = false;
start_dialog = false;
wake_up = false;


text_des = "unlock the door";

options[0] = {
	text : "unlock",
	action : function() {
		obj_player.state = player_state.headache;
		obj_player.first_dream_door = true;
		other.wake_up = true;
	}
}
Option_1 = "unlock";
options[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}

options_length = array_length(options) - 1;
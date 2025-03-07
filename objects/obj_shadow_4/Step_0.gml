event_inherited();

if (ready == true && distance_to_object(obj_player_o) < 250) {
	start_dialog = true;
}

if (obj_player_o.third_dream_cycle2_choices == true && obj_player_o.pistol_dream == true) {
	visible = true;
	ready = true;
}



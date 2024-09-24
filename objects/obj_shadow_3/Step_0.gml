event_inherited();

if (ready == true && distance_to_object(obj_player) < 250) {
	start_dialog = true;
}

if (obj_player.third_dream_cycle1_choices == true && obj_player.pistol_dream == true) {
	visible = true;
	ready = true;
}



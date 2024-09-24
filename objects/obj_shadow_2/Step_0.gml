event_inherited();

if (obj_player.pistol_dream == true) {
	visible = true;
	ready = true;
}

if (ready == true && distance_to_object(obj_player) < 250) {
	start_dialog = true;
}

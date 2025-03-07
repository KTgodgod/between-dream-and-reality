event_inherited();

if (obj_player_o.pistol_dream == true) {
	visible = true;
	ready = true;
}

if (ready == true && distance_to_object(obj_player_o) < 250) {
	start_dialog = true;
}

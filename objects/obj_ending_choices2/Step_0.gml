
event_inherited();
if (obj_player_o.third_dream_cycle2 == true && obj_player_o.third_dream_cycle2_choices != true) {
	interactable = true;
}


if musicbox_playing == true {
	options = options_set_b;
	options_length = options_set_b_length;
}
else {
	options = options_set_a;
	options_length = options_set_a_length;
}
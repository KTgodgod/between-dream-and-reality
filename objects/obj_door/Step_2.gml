if (ready_to_interact == true && obj_player.input_interact && point_distance(x,y, mouse_x, mouse_y) < 30) {
	TransitionPlaceSequence(camera_to_x, camera_to_y, seq_fadein);
	audio_play_sound(door_open, 1, false);
	timer_run = true;
}

if (timer_run == true) {
	if (++timer > 5) {
		obj_player.x = target_x;
		obj_player.y = target_y;
		camera.x = camera_to_x;
		camera.y = camera_to_y;
		timer = 0;
		timer_run = false;
	}
}
	
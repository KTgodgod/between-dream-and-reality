if (ready_to_interact == true && obj_player_o.input_interact && point_distance(x,y, mouse_x, mouse_y) < 30) {
	TransitionPlaceSequence(camera_to_x, camera_to_y, seq_fadein);
	audio_play_sound(door_open,1,false);
	timer_run = true;
}

if (timer_run == true) {
	if (++timer > 5) {
		obj_player_o.x = target_x;
		obj_player_o.y = target_y;
		obj_camera.x = camera_to_x;
		obj_camera.y = camera_to_y;
		timer = 0;
		timer_run = false;
	}
}
	
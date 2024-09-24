event_inherited();
if (ready_to_interact == true && obj_player.input_interact && obj_player.first_dream_door == true) {
	TransitionPlaceSequence(camera_to_x, camera_to_y, seq_fadein);
	audio_play_sound(door_open, 1, false);
	timer_run = true;
}

if (timer_run == true && obj_player.first_dream_door == true) {
	if (++timer > 5) {
		obj_player.x = target_x;
		obj_player.y = target_y;
		camera.x = camera_to_x;
		camera.y = camera_to_y;
		timer = 0;
		timer_run = false;
	}
}
	
if (++timer >=303 && wake_up == true) {
		TransitionPlaceSequence(640,352,seq_fadein);
		obj_player.state = player_state.laying;
		obj_player.x = 938;
		obj_player.y = 568;
		camera.x = 640;
		camera.y = 352;
		timer = 0;
		timer_run = false;
		wake_up = false;
}
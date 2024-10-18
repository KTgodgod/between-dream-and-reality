 event_inherited();

if uses <= 0 {
	interactable = false;
}

if (++timer > 300 && entering_dream == true) 
{
	TransitionPlaceSequence(camera_to_x, camera_to_y, seq_fadein);
	obj_player.x = target_x;
	obj_player.y = target_y;
	obj_camera.x = camera_to_x;
	obj_camera.y = camera_to_y;

	timer = 0;
	timer_run = false;
	entering_dream = false;
}

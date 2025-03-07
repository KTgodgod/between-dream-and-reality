if (x > 2800) {
	idle_frame = bloke_idle;
	walk_sprite = blokeV3;
	headache_sprite = bloke_headache;
}
else {
	idle_frame = spr_chr_detective;
	walk_sprite = chr_n_sprite;
	headache_sprite = chr_n_headache;
}
if state == player_state.normal {
	if (player_move_x == 0) {
		draw_sprite_ext(idle_frame, 0, x, y, facing, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(walk_sprite, frame_x, x, y, facing, 1, 0, -1, 1);
	}
}
//laying & headache animation
if state == player_state.laying {
	if (++timer > 240) {
		if (++frame_count > 9 && frame_x < sprite_get_number(chr_n_lay) - 1) {
		frame_x += 1;
		frame_count -= 9;
		}
	}
	draw_sprite_ext(chr_n_lay, frame_x, x, y, facing, 1, 0, -1, 1);
	if (timer > 360) {
		state = player_state.normal;
		timer = 0;
		frame_x = 0;
		frame_count = 0;
	}
}
if state == player_state.headache {
	if (++timer > 60) {
		if (timer > 70 && audio_exists(white_noise_fadein_low_shorter)) {
			audio_play_sound(white_noise_fadein_low_shorter,1,false);
		}
		if (++frame_count > 15 && frame_x < sprite_get_number(headache_sprite) - 1) {
			frame_x += 1;
			frame_count -= 8;
		}
	}
	draw_sprite_ext(headache_sprite, frame_x, x, y, facing, 1, 0, -1, 1);
	if (timer > 300) {
		audio_stop_sound(white_noise_fadein_low_shorter);
		state = player_state.normal;
		timer = 0;
		frame_x = 0;
		frame_count = 0;
	}
}
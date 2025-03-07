if (obj_player_o.x > 2800) && musicbox_playing == true {
	draw_sprite(m_bx_open_d, 0, x, y);
	if !audio_is_playing(Scary_Box) {
		audio_play_sound(Scary_Box, 1, true);
	}
}
else {
	draw_sprite(m_bx_closed_d, 0, x, y);
	audio_stop_sound(Scary_Box);
}

if musicbox_playing == true {
	options = options_set_b;
	options_length = options_set_b_length;
	}
else {
	options = options_set_a;
	options_length = options_set_a_length;
}

//if (broken = false && ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
//	start_dialog = true
//	timer = 0
//}

//if (start_dialog == true) {
//	text = "a music box"
//	with(check_icon) {
//		draw_set_color(c_black)
//		draw_text(x,y+1,text)
//		draw_set_color(c_white)
//		draw_text(x,y,text)
//	}
	
//	//choices
//	choice += obj_player.input_up_down
//	if (choice > options_length) choice = 0;
//	if (choice < 0) choice = options_length;
//	for (i = 0; i <= options_length; i++) {
//		text = options[i];
//		if i == choice {
//			text = "> " + text
//		}
//		with(check_icon) {
//			draw_set_color(c_black)
//			draw_text(x,y+1+((i+1)*20),text)
//			draw_set_color(c_white)
//			draw_text(x,y+((i+1)*20),text)
//		}
//	}
//	if (++timer > 10 && obj_player.input_interact) {
//		start_dialog = false
//		timer = 0 //timer to stop same frame action
//		if playing == true {
//			if (choice == 0) {
//				playing = false
//				if first_interact == true {
//					TransitionPlaceSequence(camera_to_x,camera_to_y,seq_fadein)
//					first_interact = false
//					obj_player.second_dream_music_box = true
//					obj_player.state = player_state.laying
//					obj_player.x = target_x
//					obj_player.y = target_y
//					camera.x = camera_to_x
//					camera.y = camera_to_y
//				}
//			}
//			else if (choice == 1) {
//				audio_stop_sound(Scary_Box)
//				broken = true
//				obj_musicbox.broken = true
//				if first_interact == true {
//					TransitionPlaceSequence(camera_to_x,camera_to_y,seq_fadein)
//					first_interact = false
//					obj_player.second_dream_music_box = true
//					obj_player.state = player_state.laying
//					obj_player.x = target_x
//					obj_player.y = target_y
//					camera.x = camera_to_x
//					camera.y = camera_to_y
//				}
//			}
//			else {
//				choice = 0			
//			}
//		}
//		else if playing == false{
//			if (choice == 0) {
//				playing = true
//			}
//			else {
//				choice = 0			
//			}
//		}
		
//	}
//}

if (obj_player_o.x < 2800) && musicbox_playing == true {
	draw_sprite(music_box_close,1, x, y);
	if !audio_is_playing(Music_Box) {
		audio_play_sound(Music_Box, 1, true);
	}
}
else {
	draw_sprite(music_box_close, 0, x, y);
	audio_stop_sound(Music_Box);
}

//if (broken == false && ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
//	start_dialog = true
//	timer = 0
//}

//if (start_dialog == true && playing == false) {
//	text = "a music box"
//	with(check_icon) {
//		draw_set_color(c_black)
//		draw_text(x,y+21,text)
//		draw_set_color(c_white)
//		draw_text(x,y+20,text)
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
//			draw_text(x,y+1+((i+2)*20),text)
//			draw_set_color(c_white)
//			draw_text(x,y+((i+2)*20),text)
//		}
//	}
//	if (++timer > 10 && obj_player.input_interact) {
//		start_dialog = false
//		timer = 0 //timer to stop same frame action
//		if (choice == 0) {
//			playing = true
//			music_play_time = 0
			
//		}
//		else {
//			choice = 0
//		}
//	}
//}
//else if (start_dialog == true && music_play_time < 4679) {
//	text = "a playing music box"
//	musicbox_playing = true
//	obj_musicbox_d.playing = true
//	draw_set_color(c_black)
//	draw_text(x,y+1,text)
//	draw_set_color(c_white)
//	draw_text(x,y,text)
//}

//if ++music_play_time > 4679 {
//	playing = false}
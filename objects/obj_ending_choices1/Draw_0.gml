//if (ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
//	start_dialog = true
//	timer = 0
//}

//if (start_dialog == true) {
//	text = "loaded pistol"
//	draw_set_color(c_black)
//	draw_text(x,y+1,text)
//	draw_set_color(c_white)
//	draw_text(x,y,text)
//	//choices
//	choice += obj_player.input_up_down
//	if (choice > options_length) choice = 0;
//	if (choice < 0) choice = options_length;
//	for (i = 0; i <= options_length; i++) {
//		text = options[i];
//		if i == choice {
//			text = "> " + text
//		}
//		draw_set_color(c_black)
//		draw_text(x+10,y+1+((i+1)*20),text)
//		draw_set_color(c_white)
//		draw_text(x+10,y+((i+1)*20),text)
//	}
//	if (++timer > 10 && obj_player.input_interact) {
//		start_dialog = false
//		timer = 0 //timer to stop same frame action
//		if (choice == 0) {
//			TransitionPlaceSequence(2176,352,seq_fadein_long);
//			interactable = false;
//			audio_stop_sound(Scary_Box);
//			musicbox_playing = false;
//			audio_play_sound(gunshot,1,false);
//			obj_player.state = player_state.laying;
//			obj_player.x = 2210;
//			obj_player.y = 568;
//			camera.x = 2176;
//			camera.y = 352;
//			obj_player.third_dream_cycle1_choices = true;
//			instance_deactivate_object(obj_shadow_2);
//			obj_ending_choices2.x = x;
//			obj_ending_choices2.y = y;
//			obj_ending_choices2.check_icon.x = x;
//			obj_ending_choices2.check_icon.y = y;
//			instance_destroy(other.check_icon);
//			instance_destroy();
//		}
//		else {
//			choice = 0;
//		}
//	}
//}
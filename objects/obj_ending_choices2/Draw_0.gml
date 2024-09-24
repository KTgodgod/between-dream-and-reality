// if (ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
//	start_dialog = true
//	timer = 0
//}

//if (start_dialog == true) {
//	text = "loaded pistol"
//	draw_set_color(c_black)
//	draw_text(x,y+1,text)
//	draw_set_color(c_white)
//	draw_text(x,y,text)
//	if musicbox_playing == true {
//		options = options_set_b;
//		options_length = options_set_b_length;
//	}
//	else {
//		options = options_set_a;
//		options_length = options_set_a_length;
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
//		draw_set_color(c_black)
//		draw_text(x+10,y+1+((i+1)*20),text)
//		draw_set_color(c_white)
//		draw_text(x+10,y+((i+1)*20),text)
//	}
//	if (++timer > 10 && obj_player.input_interact) {
//		start_dialog = false
//		timer = 0 //timer to stop same frame action
//		if obj_musicbox_d.playing == true {
//			if (choice == 0) {
//				TransitionPlaceSequence(2176,352,seq_fadein_long)
//				interactable = false
//				audio_stop_sound(Scary_Box)
//				obj_musicbox_d.playing = false
//				audio_play_sound(gunshot,1,false)
//				obj_player.state = player_state.laying
//				obj_player.x = 2210
//				obj_player.y = 568
//				camera.x = 2176
//				camera.y = 352
//				obj_player.third_dream_cycle2_choices = true
//				obj_ending_choices3.x = x 
//				obj_ending_choices3.y = y
//				obj_ending_choices3.check_icon.x = x
//				obj_ending_choices3.check_icon.y = y
//				instance_deactivate_object(obj_shadow_3)
//				instance_destroy(check_icon)
//				instance_destroy()
//			}
//			else if (choice == 1) {
//				TransitionPlaceSequence(740,452,Seq_true_end)
//				audio_stop_sound(clock_ticking)
//				interactable = false
//				audio_stop_sound(Scary_Box)
//				obj_musicbox_d.playing = false
//				obj_player.state = player_state.laying
//				obj_player.x = 556
//				obj_player.y = 568
//				camera.x = 740
//				camera.y = 452
//				obj_player.third_dream_cycle2_choices = true
//				obj_ending_choices3.x = x 
//				obj_ending_choices3.y = y
//				obj_ending_choices3.check_icon.x = x
//				obj_ending_choices3.check_icon.y = y
//				instance_deactivate_object(obj_shadow_3)
//				instance_destroy(check_icon)
//				instance_destroy()
//			}
//			else {
//				choice = 0	
//			}
//		}
//		else {
//			if (choice == 0) {
//				TransitionPlaceSequence(2176,352,seq_fadein_long)
//				interactable = false
//				audio_stop_sound(Scary_Box)
//				obj_musicbox_d.playing = false
//				audio_play_sound(gunshot,1,false)
//				obj_player.state = player_state.laying
//				obj_player.x = 2210
//				obj_player.y = 568
//				camera.x = 2176
//				camera.y = 352
//				obj_player.third_dream_cycle2_choices = true
//				obj_ending_choices3.x = x 
//				obj_ending_choices3.y = y
//				obj_ending_choices3.check_icon.x = x
//				obj_ending_choices3.check_icon.y = y
//				instance_deactivate_object(obj_shadow_3)
//				instance_destroy(check_icon)
//				instance_destroy()
//			}
//			else {
//				choice = 0	
//			}
//		}
//	}
//}
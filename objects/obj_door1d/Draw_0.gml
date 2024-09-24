//if (ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
//	start_dialog = true;
//	timer = 0;
//}

//if (start_dialog = true && obj_player.first_dream_key == true) {
//	text = "unlock the door";
//	draw_set_color(c_black);
//	draw_text(x, y + 1, text);
//	draw_set_color(c_white);
//	draw_text(x, y, text);
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
//		draw_text(x,y+1+((i+1)*20),text)
//		draw_set_color(c_white)
//		draw_text(x,y+((i+1)*20),text)
//	}
	
//	if (++timer > 10 && obj_player.input_interact) {
//		start_dialog = false
//		timer =0
//       		if (choice == 0) {
//			obj_player.state = player_state.headache
//			obj_player.first_dream_door = true
//			wake_up = true
//		}
//		else {
//			choice = 0			
//		}
//	}
//}
//else if (start_dialog = true && obj_player.first_shadow == false) {
//	text = "door is locked";
//	draw_set_color(c_black);
//	draw_text(x, y + 1, text);
//	draw_set_color(c_white);
//	draw_text(x, y, text);
//}

//if (++timer >=303 && wake_up == true) {
//		TransitionPlaceSequence(640,352,seq_fadein);
//		obj_player.state = player_state.laying;
//		obj_player.x = 938;
//		obj_player.y = 568;
//		camera.x = 640;
//		camera.y = 352;
//		timer = 0;
//		timer_run = false;
//		wake_up = false;
//}
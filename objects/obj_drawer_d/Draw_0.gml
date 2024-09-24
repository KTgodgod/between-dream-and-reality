//if (ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
//	start_dialog = true
//	timer = 0
//}

//if (start_dialog == true) {
//	text = "a loaded pistol"
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
//		draw_text(x,y+1+((i+1)*20),text)
//		draw_set_color(c_white)
//		draw_text(x,y+((i+1)*20),text)
//	}
//	if (++timer > 10 && obj_player.input_interact) {
//		start_dialog = false
//		timer = 0 //timer to stop same frame action
//		if (choice == 0) {
//			obj_player.pistol_dream = true
//			interactable = false
//		}
//		else {
//			choice = 0			
//		}
//	}
//}
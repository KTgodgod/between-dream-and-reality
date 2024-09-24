draw_self()
if (ready_to_interact == true && obj_player.input_interact && start_dialog != true) {
	start_dialog = true
	timer = 0
}

if (start_dialog == true) {
	text = "a single bullet"
	draw_set_color(c_black)
	draw_text(x,y+21,text)
	draw_set_color(c_white)
	draw_text(x,y+20,text)
	//choices
	choice += obj_player.input_up_down
	if (choice > options_length) choice = 0;
	if (choice < 0) choice = options_length;
	for (i = 0; i <= options_length; i++) {
		text = options[i];
		if i == choice {
			text = "> " + text
		}
		draw_set_color(c_black)
		draw_text(x,y+1+((i+2)*20),text)
		draw_set_color(c_white)
		draw_text(x,y+((i+2)*20),text)
	}
	if (++timer > 10 && obj_player.input_interact) {
		start_dialog = false
		timer = 0 //timer to stop same frame action
		if (choice == 0) {
			pistol_real = false
			visible = false
			interactable = false
			obj_player.state = player_state.headache
			ending = true
			timer = 0
		}
		else {
			choice = 0			
		}
	}
}
++timer
if (timer >300 && ending == true) {
	layer_set_visible("top",true)
	obj_player.player_puase = true
	if (timer == 420 && audio_exists(gunshot)) {
		audio_play_sound(gunshot,1,false)
		audio_stop_sound(clock_ticking)
	}
	if (timer == 660 && audio_exists(Scary_Box)) {
		audio_play_sound(Scary_Box,1,false)
		}
	if (timer >= 6420) {
		game_end()
	}
}
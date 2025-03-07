event_inherited();

start_dialog = false;
choice = 0;

text_des = "loaded pistol";

options_set_a = [];

options_set_a[0] = {
	text : "kill",
	action : function() {
		TransitionPlaceSequence(2176,352,seq_fadein_long);
		other.interactable = false;
		audio_stop_sound(Scary_Box);
		musicbox_playing = false;
		audio_play_sound(gunshot,1,false);
		obj_player_o.state = player_state.laying;
		obj_player_o.x = 2210;
		obj_player_o.y = 568;
		obj_camera.x = 2176;
		obj_camera.y = 352;
		obj_player_o.third_dream_cycle3_choices = true;
		y += 300;
		instance_deactivate_object(obj_shadow_4);
	}
}

options_set_a[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}


options_set_b = [];

options_set_b[0] = {
	text : "kill",
	action : function() {
		TransitionPlaceSequence(2176, 352, seq_fadein_long);
		other.interactable = false;
		audio_stop_sound(Scary_Box);
		musicbox_playing = false;
		audio_play_sound(gunshot, 1, false);
		obj_player_o.state = player_state.laying;
		obj_player_o.x = 2210;
		obj_player_o.y = 568;
		obj_camera.x = 2176;
		obj_camera.y = 352;
		obj_player_o.third_dream_cycle3_choices = true;

		instance_deactivate_object(obj_shadow_3);
	}
}


options_set_b[1] = {
	text : "accept",
	action : function() {
		TransitionPlaceSequence(740, 452, Seq_true_end);
		audio_stop_sound(clock_ticking);
		other.interactable = false;
		audio_stop_sound(Scary_Box);
		musicbox_playing = false;
		obj_player_o.state = player_state.laying;
		obj_player_o.x = 556;
		obj_player_o.y = 568;
		obj_camera.x = 740;
		obj_camera.y = 452;
		obj_player_o.third_dream_cycle3_choices = true;
		instance_deactivate_object(obj_shadow_4);
	}
}

options_set_b[2] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}


options_set_a_length = array_length(options_set_a) - 1;
options_set_b_length = array_length(options_set_b) - 1;
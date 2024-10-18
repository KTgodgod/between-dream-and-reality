event_inherited();
 
start_dialog = false;
choice = 0;

text_des = "loaded pistol";

options[0] = {
	text : "kill",
	action : function() {
		TransitionPlaceSequence(2176,352,seq_fadein_long);
		other.interactable = false;
		audio_stop_sound(Scary_Box);
		musicbox_playing = false;
		audio_play_sound(gunshot,1,false);
		obj_player.state = player_state.laying;
		obj_player.x = 2210;
		obj_player.y = 568;
		obj_camera.x = 2176;
		obj_camera.y = 352;
		obj_player.third_dream_cycle1_choices = true;
		instance_deactivate_object(obj_shadow_2);
		obj_ending_choices2.x = other.x;
		obj_ending_choices2.y = other.y;
		obj_ending_choices2.check_icon.x = other.x;
		obj_ending_choices2.check_icon.y = other.y;
		instance_destroy(other.check_icon);
		instance_destroy(other);
	}
}

options[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}

options_length = array_length(options) - 1;
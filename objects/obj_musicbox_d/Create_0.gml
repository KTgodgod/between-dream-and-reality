event_inherited();

interactable = true;
broken = false;
playing = false;
start_dialog = false;
first_interact = true;
choice = 0;

text_des = "a music box";

options_set_a = [];
options_set_a[0] = {
	text : "open the music box",
	action : function() {
		musicbox_playing = true;
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
	text : "close the music box",
	action : function() {
		musicbox_playing = false;
		if other.first_interact == true 
		{
			var _cam_x =  other.camera_to_x, _cam_y =  other.camera_to_y;
			TransitionPlaceSequence(_cam_x, _cam_y, seq_fadein);
			other.first_interact = false;
			obj_player.second_dream_music_box = true;
			obj_player.state = player_state.laying;
			obj_player.x = other.target_x;
			obj_player.y = other.target_y;
			obj_camera.x = _cam_x;
			obj_camera.y = _cam_y;
		}
	}
}

options_set_b[1] = {
	text : "break the music box",
	action : function() {
		musicbox_playing = false;
		other.interactable = false;
		obj_musicbox.interactable = false;
		if other.first_interact == true 
		{
			var _cam_x =  other.camera_to_x, _cam_y =  other.camera_to_y;
			TransitionPlaceSequence(_cam_x, _cam_y, seq_fadein);
			other.first_interact = false;
			obj_player.second_dream_music_box = true;
			obj_player.state = player_state.laying;
			obj_player.x = other.target_x;
			obj_player.y = other.target_y;
			obj_camera.x = _cam_x;
			obj_camera.y = _cam_y;
		}
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

options = options_set_a;
options_length = options_set_a_length;
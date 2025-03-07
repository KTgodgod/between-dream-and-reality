var _input_up, _input_left, _input_down, _input_right;
_input_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
_input_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
_input_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
_input_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));

var _dir = _input_right - _input_left;
input_up_down = _input_down - _input_up;
if !player_move_x {
	input_interact = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(ord("E"));
}

player_move_x = move_spd * _dir;

//collision check
if (state != player_state.normal or player_puase == true) {
	player_move_x = 0;
}
if (player_move_x != 0) {
	var _check_collision = move_and_collide(player_move_x, 0, obj_wall);
}
	
if state == player_state.normal {
	if (player_move_x != 0) and array_length(_check_collision) == 0 {
		facing = sign(player_move_x);
		audio_resume_sound(shoe_walk);
		if (++frame_count > 8) {
			frame_x += 1;
			frame_count -= 8;
		
		} 
	}
	else {
		audio_pause_sound(shoe_walk);
		frame_count = 0;
		frame_x = 0;
		player_move_x = 0;
	}	
}

////check audio
//if os_is_paused() or !window_has_focus() {
//	audio_pause_all()
//}
//else {
//	audio_resume_all()
//}


//check item 
//if instance_exists(obj_interact) {
//var _targeting = instance_nearest(x, y, obj_interact);
//	with _targeting {
//		target_by_player = true;
//	}
//}


//check cutsence pause


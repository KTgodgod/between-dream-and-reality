player_move_x = 0;
frame_count = 0;
frame_x = 0;
facing = 1;
target_item_radius = 30;
targeting = noone;
player_puase = false;

move_spd = 1.6;

audio_play_sound(shoe_walk,1,true);
audio_pause_sound(shoe_walk);
timer = 0;
state = player_state.laying;

enum player_state {
	normal,
	laying,
	headache
}
TransitionPlaceSequence(camera.x, camera.y, seq_fadein);

//progress record
first_awake = false;
first_shadow = false;
first_dream_key = false;
first_dream_door = false;
second_dream_music_box = false;
pistol_real = false;
pistol_dream = false;
third_dream_cycle1 = false;
third_dream_cycle1_choices = false;
third_dream_cycle2 = false;
third_dream_cycle2_choices = false;
third_dream_cycle3 = false;
third_dream_cycle3_choices = false;
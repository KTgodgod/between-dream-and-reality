enum player_state {
	normal,
	laying,
	headache
}

player_move_x = 0;
move_spd = 1.6;

hand_reach_x = 80;
hand_reach_y = 140;
target_list = ds_list_create();
target_list_l = 0;
target_ins = noone;

facing_dir = 1;// 1 as facing left, -1 as facing right
spr_idle = spr_chr_detective;
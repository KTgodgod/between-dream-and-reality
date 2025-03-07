var _input_up, _input_left, _input_down, _input_right;
_input_left = input_check("left");
_input_right = input_check("right");
_input_up = input_check("up");
_input_down = input_check("down");

var _dir = _input_right - _input_left;

player_move_x = move_spd * _dir;
if input_check("special") {
	player_move_x = player_move_x * 2;
}

var _check_collision = move_and_collide(player_move_x, 0, obj_collision);

if (player_move_x != 0) and array_length(_check_collision) == 0 
{
	facing_dir = sign(player_move_x);
}


//look for interactable item
var _x1, _y1, _x2, _y2;
_x1 = x + hand_reach_x;
_y1 = y + hand_reach_y;
_x2 = x - hand_reach_x;
_y2 = y - hand_reach_y;
ds_list_clear(target_list);
target_list_l = collision_ellipse_list(_x1, _y1, _x2, _y2, obj_interact, false, true, target_list, true);
if (target_list_l > 0) 
{
	target_ins = target_list[| 0];
}
else {
	target_ins = noone;
}

//interact with item 
if target_ins != noone && input_check_pressed("action") {
	target_ins.action_when_click();
}
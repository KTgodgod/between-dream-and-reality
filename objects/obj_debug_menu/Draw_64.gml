if global.debug {
	for (var i = 0; i < array_length(text); ++i) {
		draw_text(20, (i * 24) + 100, text[i]);
	}
	
	
	//draw debug info
	var _x_ori, _y_ori, _bbox_x1, _bbox_x2, _bbox_y1, _bbox_y2;
	
	for (var i = 0; i < array_length(check_bbox_list); ++i) 
	{
		var _ins = check_bbox_list[i];
		var _ins_spr = check_bbox_list[i].sprite_index;
		_x_ori = _ins.x - sprite_get_xoffset(_ins_spr);
		_y_ori = _ins.y - sprite_get_yoffset(_ins_spr);
		_bbox_x1 = _x_ori + sprite_get_bbox_left(_ins_spr);
		_bbox_y1 = _y_ori + sprite_get_bbox_top(_ins_spr);
		_bbox_x2 = _x_ori + sprite_get_bbox_right(_ins_spr);
		_bbox_y2 = _y_ori + sprite_get_bbox_bottom(_ins_spr);
		if show_hitbox 
		{
			draw_set_colour(c_yellow);
			draw_rectangle(_bbox_x1, _bbox_y1, _bbox_x2, _bbox_y2, true);
			draw_set_color(c_white);
		}
		if show_name 
		{
			draw_text(_bbox_x1, _bbox_y1, object_get_name(check_bbox_list[i].object_index));
		}
	}
	
	if show_target 
	{
		var _a, _b, _x1, _y1, _x2, _y2;
		_a = obj_player;
		_x1 = _a.x + _a.hand_reach_x;
		_y1 = _a.y + _a.hand_reach_y;
		_x2 = _a.x - _a.hand_reach_x;
		_y2 = _a.y - _a.hand_reach_y;
		draw_set_colour(c_yellow);
		draw_ellipse(_x1, _y1, _x2, _y2,true);
		draw_set_color(c_white);
		
		var _ins_l = obj_player.target_list_l;
		if _ins_l > 0
		{	
			draw_set_color(c_ltgrey);
			for (var i = 0; i < _ins_l; ++i) 
			{
				_b = obj_player.target_list[| i];
				draw_line(_a.x, _a.y, _b.x, _b.y);
			}
			draw_set_colour(c_white);
			_b = obj_player.target_list[| 0];
			draw_line(_a.x, _a.y, _b.x, _b.y);
		}
	}
	
}

if sel_ins_i != noone {
	var _obj = sel_ins;
	draw_rectangle(_obj.bbox_left, _obj.bbox_top, _obj.bbox_right, _obj.bbox_bottom, true);
	
	selected_alpha += 0.1;
	var _alpha = map_value(sin(selected_alpha), -1, 1, 0, 0.2);
	draw_set_alpha(_alpha);
	draw_rectangle(_obj.bbox_left, _obj.bbox_top, _obj.bbox_right, _obj.bbox_bottom, false);
	draw_set_alpha(1);
}
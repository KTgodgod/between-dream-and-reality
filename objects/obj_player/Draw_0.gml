draw_sprite_ext(spr_idle, 0, x, y, 1 * facing_dir, 1, 0, c_white, 1);

if target_ins != noone {
	draw_sprite(spr_check_item_icon, 0, target_ins.x, target_ins.y);
}
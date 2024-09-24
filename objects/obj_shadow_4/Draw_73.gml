draw_sprite_ext(bloke_shadow_idle, 0, x, y, -1, 1, 0, -1, 1);

if start_dialog == true {
	timer++;
	text = dialog_list[dialog_line];
}
if (timer > 240 && dialog_line < dialog_line_total) {
	dialog_line++;
	timer = 0;
}

if (dialog_line == dialog_line_total) {
	if (musicbox_playing == true) {
		text = dialog_list_extra[dialog_line_extra]
		if (timer > 240 && dialog_line_extra < dialog_line_extra_total) {
			dialog_line_extra++;
			timer = 0;
		}
		if (dialog_line_extra == dialog_line_extra_total) {
			extra_line = true;
		}
	}
	obj_player.third_dream_cycle3 = true;
}

draw_set_color(c_black);
draw_text(x-100,y-149,text);
draw_set_color(c_red);
draw_text(x-100,y-150,text);
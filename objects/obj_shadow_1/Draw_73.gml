
timer++;

if (timer <= 60) {
draw_sprite_ext(sprite, 0, x, y, -1, 1, 0, -1, timer / 60);
}
else if (timer > 60 && timer <= 180) {
	draw_sprite_ext(sprite, 0, x, y, -1, 1, 0, -1, 1);
}
else if (timer > 180 && timer <= 420) {
	text = "You can’t change anything.";
	draw_sprite_ext(sprite, 0, x, y, -1, 1, 0, -1, 1);
}
else if (timer > 420 && timer <= 660) {
	text = "It had already happened.";
	draw_sprite_ext(sprite, 0, x, y, -1, 1, 0, -1, 1);
}
else if (timer > 660 && timer <= 900) {
	text = "You knew it.";
	draw_sprite_ext(sprite, 0, x, y, -1, 1, 0, -1, 1);
}
else if (timer > 900) {
	text = "";
	draw_sprite_ext(sprite, 0, x, y, -1, 1, 0, -1, fade_out_timer / 60);
	fade_out_timer--;
}


draw_set_color(c_black);
draw_text(x-50,y-149,text);
draw_set_color(c_red);
draw_text(x-50,y-150,text);
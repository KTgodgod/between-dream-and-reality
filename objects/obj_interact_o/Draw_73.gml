/// @description draw pick option
if (ready_to_interact == true && start_dialog != true
&& obj_player_o.input_interact && point_distance(x,y, mouse_x, mouse_y) < 30) {
	start_dialog = true;
	timer = 0;
}

//&& place_meeting(mouse_x, mouse_y, check_icon)

if (start_dialog == true) {
	draw_set_color(c_black);
	draw_text(x - 2, y + 2, text_des);
	draw_set_color(c_white);
	draw_text(x, y, text_des);
	//choices
	choice += obj_player_o.input_up_down;
	if (choice > options_length) choice = 0;
	if (choice < 0) choice = options_length;
	
	for (var i = 0; i <= options_length; i++) {
		var _text = options[i].text;
		var _text_y = y + ((i + 1) * 20);
		if point_in_rectangle(mouse_x, mouse_y, x, _text_y + 2, x + string_width(_text), _text_y + string_height(_text)) 
		{
			choice = i;
		}
		else {
			choice = -1;
		}
		
		if i == choice {
			_text = "> " + _text;
			draw_set_color(c_black);
			draw_text(x - 2, _text_y + 1, _text);
			draw_set_color(c_white);
			draw_text(x, _text_y, _text);
		}
		else {
			draw_set_color(c_black);
			draw_text(x - 2, _text_y + 1, _text);
			draw_set_color(c_ltgrey);
			draw_text(x, _text_y, _text);
		}
		
		if (timer++ > 10 && obj_player_o.input_interact && choice >= 0) {
			start_dialog = false;
			timer = 0; //timer to stop same frame action
			options[choice].action();
		}
	}
}
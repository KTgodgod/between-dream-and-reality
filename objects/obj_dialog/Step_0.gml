
if text_display_i == 0 
{
	if text_display_type == 0 
	{
		var _str_split = string_split(text, " ");
		var _str_line = [];
		var _curr_line = "";
		for (var i = 0; i < array_length(_str_split); ++i) 
		{
			var _str_width = string_width(_str_split[i]);
			if string_width(_curr_line) + _str_width < dialog_width 
			{
				_curr_line = string_concat(_curr_line, " ", _str_split[i]);
			}
			else 
			{
				_curr_line = string_concat(_curr_line, "\n", _str_split[i]);
			}
		}
		text = _curr_line;
	}
	
	text_length = string_length(text);
}

if text_display_i < text_length 
{
	if text_display_type == 2
	{
		text_display_i = text_length;
	}
	else
	{
		text_display_i += text_display_speed;
	}
	text_display = string_copy(text, 1, text_display_i);
}

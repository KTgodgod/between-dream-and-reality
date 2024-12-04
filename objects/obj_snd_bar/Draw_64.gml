
var _u = view_scale;

draw_sprite_ext(sprite_index, image_index, x * _u, y * _u, image_xscale * _u, image_yscale * _u, 0, c_white, 1);

var _icon_x = map_value(global.volume, 0, 1, min_cord, max_cord);


draw_arrow(_icon_x, y + 20,_icon_x, y + 5, 15);
//text title
var _text = $"BGM\n{global.volume}";
draw_text(x - (string_width(_text) / 2), y - 50, _text);
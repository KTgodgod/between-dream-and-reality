event_name = "check clock";

var _prog = global.progress;
for (var i = 0; i < array_length(_prog); ++i) {
	if _prog[i].name = event_name {
		event_ref = _prog[i];
	}
}


action_when_click = function() {
	event_ref.state = true;

	with obj_dialog {
		text = other.text1;
		text_display_i = 0;
	}
}

text1 = "this is a clock";
text2 = "I can't tell the time";


event_inherited();

interactable = true;
start_dialog = false;
choice = 0;

text_des = "a drawing of a little girl and her parents";

options[0] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}

options_length = array_length(options) - 1;
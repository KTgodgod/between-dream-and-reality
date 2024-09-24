event_inherited();

interactable = true;

globalvar musicbox_playing;
musicbox_playing = false;
broken = false;
music_play_time = 0;
start_dialog = false;
choice = 0;

text_des = "a music box";

options[0] = {
	text : "open the music box",
	action : function() {
		musicbox_playing = true;
	}
}

options[1] = {
	text : "leave",
	action : function() {
		other.choice = 0;
	}
}


options_length = array_length(options) - 1;
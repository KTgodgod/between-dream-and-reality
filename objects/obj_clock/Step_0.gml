if !audio_is_playing(clock_ticking) {
	audio_play_sound(clock_ticking, 1, false, global.sfx_vol, 0, random_range(0.98, 1.02));
}
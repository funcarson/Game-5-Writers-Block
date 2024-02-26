/// @description Insert description here
// You can write your code in this editor

audio_stop_all();

if room == rm_menu {
	audio_play_sound(sd_title, 0 , true);
}
else if room == rm_lose {
	audio_play_sound(sd_lose, 0 , true);
}
else if room == rm_win {
	audio_play_sound(sd_win, 0 , true);
}
else {
	audio_play_sound(sd_choose, 0 , true);
}
























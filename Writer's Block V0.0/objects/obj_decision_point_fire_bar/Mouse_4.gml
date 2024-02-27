/// @description Insert description here
// You can write your code in this editor
global.trap_choice = 2;

if global.enemy_choice = 2 {
	room_goto(rm_level_3_crow_fire);
}
else if global.enemy_choice = 1 {
	room_goto(rm_level_3_slime_fire);
}
else {
	room_goto(rm_level_3_skeleton_fire);
}


audio_play_sound(sd_button_press, 0 , false);

audio_stop_all();

















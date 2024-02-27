/// @description

global.player_direction = direction - 180;

//get user input
move_right	=  keyboard_check(ord("D"));
move_left	= -keyboard_check(ord("A"));
jump_key	=  keyboard_check_pressed(ord("W"));

//process input
hsp = (move_left + move_right) * move_speed;

// if the jump key is pressed
if(place_meeting(x, y + 1, obj_platform )||place_meeting(x, y + 1, obj_floor)) {
	if(jump_key){
		audio_play_sound(sd_jump,0,false); 
		vsp = -jump_speed;
	}
}
 

//handle collisions
//horizontal collision check
if(place_meeting(x+hsp,y, obj_floor)){
	//stop horizontal motion
	hsp = 0;
}
if(place_meeting(x+hsp,y, obj_platform)){
	//stop horizontal motion
	hsp = 0;
}

x += hsp;
x = clamp(x, 0, room_width - sprite_width / 2);

//vertical collision check
if(place_meeting(x,y+vsp, obj_floor)){
	if(jump_key){
		vsp = -jump_speed
	}
}
if(place_meeting(x,y+vsp, obj_platform)){
	if(jump_key){
		vsp = -jump_speed
	}
}
vsp += grav 

if (place_meeting(x, y + vsp, obj_platform)) {
	while (!place_meeting(x, y + sign(vsp), obj_platform)) {
		y += sign(vsp)
	}
	vsp = 0
}
if (place_meeting(x, y + vsp, obj_floor)) {
	while (!place_meeting(x, y + sign(vsp), obj_floor)) {
		y += sign(vsp)
	}
	vsp = 0
}

//Apply hsp and vsp
x += hsp
y += vsp

 //game over condition
if (hp <= 0){
	room_goto(rm_lose);
	audio_play_sound(sd_death_player, 0 , false);
}

// if they fall off the edge of the map
if (y + sprite_height / 2 > room_height){
		game_restart()
}

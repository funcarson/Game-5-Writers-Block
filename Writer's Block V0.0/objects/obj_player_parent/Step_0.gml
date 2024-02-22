/// @description

//get user input
move_right	=  keyboard_check(ord("D"));
move_left	= -keyboard_check(ord("A"));
jump_key	=  keyboard_check_pressed(ord("W"));

//process input
var move = move_left + move_right;

hsp = move * move_speed;

//proc gravity and jumping
if(!place_meeting(x, y + 1, obj_floor)){
	vsp += grav;
}
else{
	if(jump_key)
{ // if the jump key is pressed
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
	
	//stop vertical motion
	vsp = 0;
}
if(place_meeting(x,y+vsp, obj_platform)){
	//stop vertical motion
	vsp = 0;
}
if(jump_key && place_meeting(x,y+vsp, obj_platform)){
	vsp = -jump_speed;
}

y += vsp;


 //game over condition
if (global.player_hp <= 0){
	game_restart()
}

// if they fall off the edge of the map
if (y + sprite_height / 2 > room_height){
		game_restart()
}

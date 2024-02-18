/// @description Insert description here
// You can write your code in this editor
y += vsp
x += hspeed;

if (hp <= 0) {
	instance_destroy();
}


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


//Makes enemies bounce off of spikes and fire
if (place_meeting(x, y + vsp, obj_spikes) || (place_meeting(x,y + vsp, obj_fire_bar)) {
	
	while (!place_meeting(x, y + sign(vsp), obj_spikes) || !place_meeting(x,y + sign(vsp), obj_fire_bar)) {
		y += sign(vsp)
	}
	
	if(direction == 180) {
		direction = 0;
		hspeed = 2;
	}
	
	else {
		direction = 180;
		hspeed = -2;
	}
	
	vsp = 0
}

























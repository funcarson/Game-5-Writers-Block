/// @description Insert description here
// You can write your code in this editor
y += vsp
x += hspeed;

if (hp <= 0) {
	instance_destroy();
}


//Makes it so they stay on a platform
if (place_meeting(x, y + vsp, obj_platform)) {
	
	while (!place_meeting(x, y + sign(vsp), obj_platform)) {
		y += sign(vsp)
	}
	
	vsp = 0
}
else {
	vsp = normal_vsp;
}

if (place_meeting(x, y + vsp, obj_floor)) {
	
	while (!place_meeting(x, y + sign(vsp), obj_floor)) {
		y += sign(vsp)
	}
	
	vsp = 0
}

else {
	vsp = normal_vsp;
}
//Makes enemies bounce off of spikes and fire
if (place_meeting(x, y + vsp, obj_spikes) || place_meeting(x,y + vsp, obj_fire_bar)) {
	
	while (!place_meeting(x, y + sign(vsp), obj_spikes) || !place_meeting(x,y + sign(vsp), obj_fire_bar)) {
		y += sign(vsp);
	}
	
	if(direction == 180) {
		direction = 0;
	}
	
	else {
		direction = 180;
	}
	
	vsp = 0;
}

else {
	vsp = normal_vsp;
}























/// @description Insert description here
// You can write your code in this editor

if(follow != noone)
{
	if(follow.x && follow.y) {
		xTo = follow.x;
		yTo = follow.y;
	}
	
	else {
		xto = x;
		yTo = y;
	}
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

camera_set_view_pos(view_camera[0], x - (camWidth * 0.5), y - (camHeight * 0.5));



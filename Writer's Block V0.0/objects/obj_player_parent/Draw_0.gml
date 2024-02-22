/// @description Insert description here
// You can write your code in this editor

if(invincible){
	if(image_alpha ==1){
		image_alpha = 0;
	}
	else{
		image_alpha = 1;
	}
}
else{
	image_alpha = 1;
}
draw_self();

if (hp < max_hp) {
	draw_healthbar(x-16, y-16, x+16, y-10, (hp/max_hp)*100, c_black,c_red,c_green,0,true,true);
}











































































































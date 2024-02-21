/// @description Insert description here
// You can write your code in this editor
switch (global.trap_choice) {
	case 2:
		instance_create_layer(1810, 540, "Instances", obj_crumbling_platoform);
		break;
	case 1:
		instance_create_layer(1810, 540, "Instances", obj_fire_bar);
		break;
	default:
		instance_create_layer(1810, 540, "Instances", obj_spikes);
		break;
}
alarm[0] = 90;
























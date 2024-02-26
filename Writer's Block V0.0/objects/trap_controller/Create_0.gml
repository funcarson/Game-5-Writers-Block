/// @description Level designer add trap locations here

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























/// @description Insert description here
// You can write your code in this editor
spawn_random = irandom(5000);
spawn_random_2 = irandom(5000);
switch (global.enemy_choice) {
	case 2:
		instance_create_layer(spawn_random, 130, "Instances", obj_crow);
		instance_create_layer(spawn_random_2, 130, "Instances", obj_crow);
		break;
	case 1:
		instance_create_layer(spawn_random, 130, "Instances", obj_slime);
		instance_create_layer(spawn_random_2, 130, "Instances", obj_slime);
		break;
	default:
		instance_create_layer(spawn_random, 130, "Instances", obj_skeleton);
		instance_create_layer(spawn_random_2, 130, "Instances", obj_skeleton);
		break;
}
alarm[0] = 90;
























/// @description Insert description here
// You can write your code in this editor
spawn_random = irandom(4000);
spawn_random_2 = irandom(4000);
spawm_random_3 = irandom(550) + 500;
spawm_random_4 = irandom(550) + 500;
switch (global.enemy_choice) {
	case 2:
		instance_create_layer(spawn_random, spawm_random_3, "Instances", obj_crow);
		instance_create_layer(spawn_random_2, spawm_random_4, "Instances", obj_crow);
		break;
	case 1:
		instance_create_layer(spawn_random, 520, "Instances", obj_slime);
		instance_create_layer(spawn_random_2, 520, "Instances", obj_slime);
		break;
	default:
		instance_create_layer(spawn_random, 520, "Instances", obj_skeleton);
		instance_create_layer(spawn_random_2, 520, "Instances", obj_skeleton);
		break;
}

instance_create_layer(spawn_random, 520, "Instances", obj_skeleton);
alarm[0] = 45;
























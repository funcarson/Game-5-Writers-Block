/// @description Insert description here
// You can write your code in this editor
switch (global.player_choice) {
	case 2:
		instance_create_layer(175, 493, "Instances", obj_player_samurai);
		break;
	case 1:
		instance_create_layer(175, 493, "Instances", obj_player_parkourist);
		break;
	default:
		instance_create_layer(175, 493, "Instances", obj_player_gunslinger);
		break;
}
























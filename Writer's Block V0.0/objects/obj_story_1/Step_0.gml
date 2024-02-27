timer--;

if (timer <= 0){
	timer = 0;
	if keyboard_check_pressed(vk_space){
		room_goto(rm_first_choice)
	}
}
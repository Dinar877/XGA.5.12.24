function Tentacely_turning() {
	if ((sprite_index = spr_tentaclely_idle_left) or (sprite_index = spr_tentaclely_walk_left)) && (state = Tentacely_turning)
	{
		sprite_index = spr_tentaclely_turn_l2r;	
	}
	else if (sprite_index = spr_tentaclely_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_tentaclely_idle_right;	
		facing = 1;
		State_machine_switch_state(Tentacely_idle);
		exit
	}

	if ((sprite_index = spr_tentaclely_idle_right) or (sprite_index = spr_tentaclely_walk_right)) && (state = Tentacely_turning)
	{
		sprite_index = spr_tentaclely_turn_r2l;	
	}
	else if (sprite_index = spr_tentaclely_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_tentaclely_idle_left;	
		facing = -1;
		State_machine_switch_state(Tentacely_idle);
		exit
	}


}

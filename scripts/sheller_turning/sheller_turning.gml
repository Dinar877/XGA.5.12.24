function sheller_turning() {
	if ((sprite_index = spr_sheller_walk_left_begin) or (sprite_index = spr_sheller_walk_left_end) or (sprite_index = spr_sheller_walk_left_roll)) && (state = sheller_turning)
	{
		sprite_index = spr_sheller_turn_r2l;
	}
	else if (sprite_index = spr_sheller_turn_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(sheller_walking);
		sprite_index = spr_sheller_walk_right_begin;
		image_index = 0;
		facing = 1;
	
	}

	if ((sprite_index = spr_sheller_walk_right_begin) or (sprite_index = spr_sheller_walk_right_end) or (sprite_index = spr_sheller_walk_right_roll)) && (state = sheller_turning)
	{
		sprite_index = spr_sheller_turn_l2r;
		image_index = 0;
	}
	else if (sprite_index = spr_sheller_turn_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(sheller_walking);
		sprite_index = spr_sheller_walk_left_begin;	
		image_index = 0;
		facing = -1;
	}


}

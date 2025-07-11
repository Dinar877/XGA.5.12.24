function white_soldier_turn() {
	if (sprite_index = spr_white_soldier_stand_left) && (state = white_soldier_turn)
	{
		sprite_index = spr_white_soldier_turn_l2r;
		image_index = 0
	}
	else if (sprite_index = spr_white_soldier_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_white_soldier_stand_right;
		facing = 1;
		with(inst2)
		{
			facing = 1	
		}
		State_machine_switch_state(white_soldier_stand);
		exit;
	}

	if (sprite_index = spr_white_soldier_stand_right) && (state = white_soldier_turn)
	{
		sprite_index = spr_white_soldier_turn_r2l;	
		image_index = 0
	}
	else if (sprite_index = spr_white_soldier_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_white_soldier_stand_left;
		facing = -1;
		with(inst2)
		{
			facing = -1	
		}
		State_machine_switch_state(white_soldier_stand);
		exit;
	}


}

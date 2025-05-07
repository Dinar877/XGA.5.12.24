function stage1_turning() {
	if (sprite_index = spr_stage1_stand_left) && (state = stage1_turning)
	{
		sprite_index = spr_stage1_turn_l2r;	
	}
	else if (sprite_index = spr_stage1_turn_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stage1_idle);
		sprite_index = spr_stage1_stand_right;	
		facing = 1;
	}

	if (sprite_index = spr_stage1_stand_right) && (state = stage1_turning)
	{
		sprite_index = spr_stage1_turn_r2l;	
	}
	else if (sprite_index = spr_stage1_turn_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stage1_idle);
		sprite_index = spr_stage1_stand_left;	
		facing = -1;
	}


}

function eyebot_turning() {
	if (sprite_index = spr_eyebot_idle_left) && (state = eyebot_turning)
	{
		sprite_index = spr_eyebot_turning_l2r;	
	}
	else if (sprite_index = spr_eyebot_turning_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(eyebot_idle);
		sprite_index = spr_eyebot_idle_right;	
		facing = 1
	}

	if (sprite_index = spr_eyebot_idle_right) && (state = eyebot_turning)
	{
		sprite_index = spr_eyebot_turning_r2l;	
	}
	else if (sprite_index = spr_eyebot_turning_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(eyebot_idle);
		sprite_index = spr_eyebot_idle_left;	
		facing = -1
	}


}

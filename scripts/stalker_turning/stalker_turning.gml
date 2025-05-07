function stalker_turning() {
	if (sprite_index = spr_stalker_idleL) && (state = stalker_turning)
	{
		sprite_index = spr_stalker_Tl2r;	
	}
	else if (sprite_index = spr_stalker_Tl2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stalker_idle);
		sprite_index = spr_stalker_idleR;	
		facing = 1;
	
	}

	if (sprite_index = spr_stalker_idleR) && (state = stalker_turning)
	{
		sprite_index = spr_stalker_Tr2l;	
	}
	else if (sprite_index = spr_stalker_Tr2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stalker_idle);
		sprite_index = spr_stalker_idleL;	
		facing = -1;
	}


}

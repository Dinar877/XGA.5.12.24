function stalker_turning_idlewalk() {
	if (sprite_index = spr_stalker_idleL) && (state = stalker_turning_idlewalk)
	{
		sprite_index = spr_stalker_Tl2r;	
	}
	else if (sprite_index = spr_stalker_Tl2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stalker_idle_idlewalk);
		sprite_index = spr_stalker_idleR;	
		facing = 1;
		idlewalk = 320;
	
	}

	if (sprite_index = spr_stalker_idleR) && (state = stalker_turning_idlewalk)
	{
		sprite_index = spr_stalker_Tr2l;	
	}
	else if (sprite_index = spr_stalker_Tr2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(stalker_idle_idlewalk);
		sprite_index = spr_stalker_idleL;	
		facing = -1;
		idlewalk = -320;
	}


}

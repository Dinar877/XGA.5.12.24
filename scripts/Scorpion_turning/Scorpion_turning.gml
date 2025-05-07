function Scorpion_turning() {
	if (sprite_index = spr_scorpion_stand_left) && (state = Scorpion_turning)
	{
		sprite_index = spr_scorpion_turn_l2r;
		image_index = 0
	}
	else if (sprite_index = spr_scorpion_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_scorpion_stand_right;
		facing = 1;
		with(inst2)
		{
			facing = 1	
		}
		
		idleanim_walktimer = 0;
		
		State_machine_switch_state(Scorpion_stand);
		exit;
	}

	if (sprite_index = spr_scorpion_stand_right) && (state = Scorpion_turning)
	{
		sprite_index = spr_scorpion_turn_r2l;	
		image_index = 0
	}
	else if (sprite_index = spr_scorpion_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_scorpion_stand_left;
		facing = -1;
		with(inst2)
		{
			facing = -1	
		}
		
		idleanim_walktimer = 0;
		
		State_machine_switch_state(Scorpion_stand);
		exit;
	}


}

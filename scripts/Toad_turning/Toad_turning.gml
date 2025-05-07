function Toad_turning() {
	if (sprite_index = spr_enemy_toad_standleft) && (state = Toad_turning)
	{
		sprite_index = spr_enemy_toad_tunrl2r;
		image_index = 0
	}
	else if (sprite_index = spr_enemy_toad_tunrl2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_enemy_toad_standright;
		facing = 1;
		with(inst2)
		{
			facing = 1	
		}
		State_machine_switch_state(Toad_stand);
		exit;
	}

	if (sprite_index = spr_enemy_toad_standright) && (state = Toad_turning)
	{
		sprite_index = spr_enemy_toad_turnr2l;	
		image_index = 0
	}
	else if (sprite_index = spr_enemy_toad_turnr2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_enemy_toad_standleft;
		facing = -1;
		with(inst2)
		{
			facing = -1	
		}
		State_machine_switch_state(Toad_stand);
		exit;
	}


}

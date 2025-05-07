function darkeater_turning_idlewalk() {
	
	state1 = darkeater_turning_idlewalk
	
	if (obj_darkeater_sprites.sprite_index != spr_darkeater_turnl2r) && (state = darkeater_turning_idlewalk) && (obj_darkeater_sprites.sprite_index != spr_darkeater_turnr2l) && (facing = -1)
	{
		obj_darkeater_sprites.sprite_index = spr_darkeater_turnl2r;
		obj_darkeater_sprites.image_index = 0;
	}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_turnl2r) && (obj_darkeater_sprites.image_index >= obj_darkeater_sprites.image_number-1) && (obj_darkeater_sprites.sprite_index != spr_darkeater_turnr2l)
	{
		if (global.darkeater_active == 0)	
		{
			State_machine_switch_state(darkeater_undetected_idlewalk);
		}
		else if (global.darkeater_active == 1)	
		{
			State_machine_switch_state(darkeater_idle);
		}
		
		obj_darkeater_sprites.sprite_index = spr_darkeater_idle_right;	
		facing = 1;
		idlewalk = 320;
		turning = 0
		exit
	}

	if (obj_darkeater_sprites.sprite_index != spr_darkeater_turnr2l) && (state = darkeater_turning_idlewalk) && (obj_darkeater_sprites.sprite_index != spr_darkeater_turnl2r) && (facing = 1)
	{
		obj_darkeater_sprites.sprite_index = spr_darkeater_turnr2l;	
		obj_darkeater_sprites.image_index = 0;
	}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_turnr2l) && (obj_darkeater_sprites.image_index >= obj_darkeater_sprites.image_number-1) && (obj_darkeater_sprites.sprite_index != spr_darkeater_turnl2r)
	{
		if (global.darkeater_active == 0)	
		{
			State_machine_switch_state(darkeater_undetected_idlewalk);
		}
		else if (global.darkeater_active == 1)	
		{
			State_machine_switch_state(darkeater_idle);
		}
		
		obj_darkeater_sprites.sprite_index = spr_darkeater_idle_left;	
		facing = -1;
		idlewalk = 320;
		turning = 0
		exit
	}


}

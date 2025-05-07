function firebug_turn() {
	if (sprite_index = spr_firebug_idle_left) && (state = firebug_turn)
	{
		sprite_index = spr_firebug_turn_l2r;	
	}
	else if (sprite_index = spr_firebug_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_firebug_idle_right;	
		facing = 1;
		State_machine_switch_state(firebug_idle);
	}

	if (sprite_index = spr_firebug_idle_right) && (state = firebug_turn)
	{
		sprite_index = spr_firebug_turn_r2l;	
	}
	else if (sprite_index = spr_firebug_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_firebug_idle_left;	
		facing = -1;
		State_machine_switch_state(firebug_idle);
	}


}

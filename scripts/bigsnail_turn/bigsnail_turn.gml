// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bigsnail_turn(){

	if (sprite_index != spr_bigsnail_turn_l2r) && (sprite_index != spr_bigsnail_turn_r2l) && (facing = -1)
	{
		sprite_index = spr_bigsnail_turn_l2r;	
	}
	else if (sprite_index = spr_bigsnail_turn_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(bigsnail_idle);
		sprite_index = spr_bigsnail_right;	
		facing = 1;
		exit
	}

	if (sprite_index != spr_bigsnail_turn_r2l) && (sprite_index != spr_bigsnail_turn_l2r) && (facing = 1)
	{
		sprite_index = spr_bigsnail_turn_r2l;	
	}
	else if (sprite_index = spr_bigsnail_turn_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(bigsnail_idle);
		sprite_index = spr_bigsnail_left;	
		facing = -1;
		exit
	}


}
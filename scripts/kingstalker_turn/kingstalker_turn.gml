// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kingstalker_turn(){

	if (sprite_index != spr_kingstalker_turn_L2R) && (state = kingstalker_turn) && (sprite_index != spr_kingstalker_turn_R2L) && (facing = -1)
	{
		sprite_index = spr_kingstalker_turn_L2R;	
	}
	else if (sprite_index = spr_kingstalker_turn_L2R) && (image_index >= image_number-1)
	{
		State_machine_switch_state(kingstalker_idle);
		sprite_index = spr_kingstalker_idle_right;	
		facing = 1;
		exit
	}

	if (sprite_index != spr_kingstalker_turn_R2L) && (state = kingstalker_turn) && (sprite_index != spr_kingstalker_turn_L2R) && (facing = 1)
	{
		sprite_index = spr_kingstalker_turn_R2L;	
	}
	else if (sprite_index = spr_kingstalker_turn_R2L) && (image_index >= image_number-1)
	{
		State_machine_switch_state(kingstalker_idle);
		sprite_index = spr_kingstalker_idle_left;	
		facing = -1;
		exit
	}


}
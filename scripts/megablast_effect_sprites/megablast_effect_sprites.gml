// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function megablast_effect_sprites(){
	
	//script needs to be initialized with basic sprites first to work properly.
	if (sprite_index = spr_megashot_down)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_down_shield	
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_down_homing	
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_down_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_down_spread
		}
	}
	else if (sprite_index = spr_megashot_downright)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_downright_shield	
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_downright_homing	
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_downright_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_downright_spread
		}
	}
	else if (sprite_index = spr_megashot_downleft)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_downleft_shield
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_downleft_homing
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_downleft_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_downleft_spread
		}
	}
	else if (sprite_index = spr_megashot_left)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_left_shield
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_left_homing
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_left_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_left_spread
		}
	}
	else if (sprite_index = spr_megashot_right)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_right_shield
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_right_homing
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_right_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_right_spread
		}
	}
	else if (sprite_index = spr_megashot_upright)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_upright_shield
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_upright_homing
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_upright_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_upright_spread
		}
	}
	else if (sprite_index = spr_megashot_upleft)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_upleft_shield
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_upleft_homing
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_upleft_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_upleft_spread
		}
	}
	else if (sprite_index = spr_megashot_up)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_megashot_up_shield
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_megashot_up_homing
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_megashot_up_burn
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_megashot_up_spread
		}
	}

}
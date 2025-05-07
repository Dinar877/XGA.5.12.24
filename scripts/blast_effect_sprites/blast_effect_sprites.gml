// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function blast_effect_sprites(){
	
	//script needs to be initialized with basic sprites first to work properly.
	if (sprite_index = spr_shot_down)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_down	
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_down	
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotdown
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_down
		}
	}
	else if (sprite_index = spr_shot_downright)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_rightdown	
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_downright	
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotdownright
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_downright
		}
	}
	else if (sprite_index = spr_downleft)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_leftdown
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_downleft
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotdownleft
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_downleft
		}
	}
	else if (sprite_index = spr_shot_left)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_left
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_left
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotleft
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_left
		}
	}
	else if (sprite_index = spr_shot_right)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_right
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_right
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotright
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_right
		}
	}
	else if (sprite_index = spr_shot_upright)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_rightup
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_upright
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotupright
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_upright
		}
	}
	else if (sprite_index = spr_shot_upleft)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_leftup
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_upleft
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotupleft
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_upleft
		}
	}
	else if (sprite_index = spr_shot_up)
	{
		if (global.beam_shield_available > 0)
		{
			sprite_index = spr_SHIELD_uncharged_blast_up
		}
		else if (global.beam_homing_available > 0)
		{
			sprite_index = spr_HOMING_uncharged_blast_up
		}
		else if (global.beam_burn_available > 0)
		{
			sprite_index = spr_BURN_shotup
		}
		else if (global.beam_spread_available > 0)
		{
			sprite_index = spr_Spread_blasteffect_up
		}
	}

}
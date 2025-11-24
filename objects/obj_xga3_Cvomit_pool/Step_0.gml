/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	exit;	
}


enemy_hurt_player_code(4);

if (sprite_index = spr_xga3_Cvomiting_pool_begin) && (image_index >= image_number-1)
{
	sprite_index = spr_xga3_Cvomiting_pool_active;
}

if (sprite_index = spr_xga3_Cvomiting_pool_active) && (activeTimer > 0)
{
	activeTimer -= ((1/60)/5);
}
else if (sprite_index = spr_xga3_Cvomiting_pool_active) && (activeTimer <= 0)
{
	sprite_index = spr_xga3_Cvomiting_pool_ending;
	
	with(obj_boss_xga3)
	{
		if (sprite_index = spr_xga3_Cvomit_part2_left)
		{
			sprite_index = spr_xga3_Cvomit_part3_left;	
		}
		else if (sprite_index = spr_xga3_Cvomit_part2_right)
		{
			sprite_index = spr_xga3_Cvomit_part3_right;	
		}
		
		audio_stop_sound(snd_xga3_vomit_loop);
	}
}

//ending
if (sprite_index = spr_xga3_Cvomiting_pool_ending) && (image_index >= image_number-1)
{
	instance_destroy();	
	exit;
}

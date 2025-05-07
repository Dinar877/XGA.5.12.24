/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.corrupted > 0)
{
	exit;	
}


if (eating > 0)
{		
	if (sprite_index = spr_flytrap_idle)
	{
		sprite_index = spr_flytrap_beginsnap
	}
	
	if (sprite_index = spr_flytrap_beginsnap) && (image_index >= image_number-1)
	{
		sprite_index = spr_flytrap_endsnap
		
		var io = round(random_range(1,2))
		
		if (io = 1) && (!audio_is_playing(snd_monsterbite_1))
		{
			audio_play_sound(snd_monsterbite_1,1000,false,global.sfx_volume)
		}
		else if (io = 2) && (!audio_is_playing(snd_monsterbite_2))
		{
			audio_play_sound(snd_monsterbite_2,1000,false,global.sfx_volume)
		}
		
		instance_deactivate_object(inst1)	
		instance_deactivate_object(inst2)	
		instance_deactivate_object(inst3)	
		instance_deactivate_object(inst4)	
		instance_deactivate_object(inst5)
		
		enemy_hurt_player_code(3)
	}
	
	if (sprite_index = spr_flytrap_endsnap) && (image_index >= image_number-1)
	{
		sprite_index = spr_flytrap_idle
		eating = 0
	}
}

inst_blockspawner = collision_rectangle(id.x-12,id.y-11,id.x+10,id.y-3,obj_player,false,true)

if (inst_blockspawner <= 0) && (sprite_index != spr_flytrap_endsnap)
{
	inst_blockspawner = collision_rectangle(id.x-12,id.y-11,id.x+10,id.y-3,obj_player,false,true)
		
		if (!inst_blockspawner)
		{
			instance_activate_object(inst1)	
			instance_activate_object(inst2)	
			instance_activate_object(inst3)	
			instance_activate_object(inst4)	
			instance_activate_object(inst5)	
		
			with(inst1)
			{
				switch1 = 0	
			}
			with(inst2)
			{
				switch1 = 0	
			}
			with(inst3)
			{
				switch1 = 0	
			}
			with(inst4)
			{
				switch1 = 0	
			}
			with(inst5)
			{
				switch1 = 0	
			}
		}
}

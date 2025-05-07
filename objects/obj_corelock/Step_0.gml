/// @description Insert description here
// You can write your code in this edito
if (instance_place(id.x,id.y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

//sound effects
//closing
if (sprite_index = spr_corelock_reversing) && (round(image_index) == 28) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}

//opening
if (sprite_index = spr_corelock_opening) && (round(image_index) == 8) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}


//opening-finish
if (sprite_index = spr_corelock_opening) && (image_index >= image_number-1)
{
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	instance_deactivate_object(inst6)	
	instance_deactivate_object(inst7)	
	instance_deactivate_object(inst8)
	
	image_speed = 0
	image_index = image_number-1
	
	with(obj_corelock_switch)
	{
		if (global.doors_redblocker[redblockerID] == 0)
		{
			global.doors_redblocker[redblockerID] = 1;
		}
	}
}
/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[cutsceneID] > 0)
{
	with(obj_bridge1)
	{
		instance_destroy()
	}
	with(obj_bridge2)
	{
		instance_destroy()
	}
	with(obj_bridge3)
	{
		instance_destroy()
	}
	with(obj_bridge_collisionblock)
	{
		instance_destroy()	
	}
	instance_destroy()
}
else if (global.cutsceneID[cutsceneID] == 0)
{
	with(obj_bridge1)
	{
		image_alpha = 1
	}
	with(obj_bridge2)
	{
		image_alpha = 1
	}
	with(obj_bridge3)
	{
		image_alpha = 1
	}
	with(obj_bridge_collisionblock)
	{
		image_alpha = 1
	}
	image_alpha = 1
}

if (place_meeting(x,y-1,obj_player))
{
	if (audio_is_playing(global.sector_music))
	{
		audio_sound_gain(global.sector_music,0,0)
		if (audio_sound_get_gain(global.sector_music) <= 0)
		{
			audio_stop_sound(global.sector_music)
			global.sector_music = snd_preboss
			audio_play_sound(global.sector_music,2000,true)
			audio_sound_gain(global.sector_music,0,0)
			audio_sound_gain(global.sector_music,global.music_volume,1500)
		}
	}
	
	with(obj_bridge1)
	{
		direction1 = 1	
		instance_create_layer(bbox_left,y,layer_get_id("Inst_doors"),obj_explosion_random)
		instance_create_layer(bbox_right,y,layer_get_id("Inst_doors"),obj_explosion_random)
	}
	with(obj_bridge2)
	{
		direction1 = -1	
	}
	with(obj_bridge3)
	{
		direction1 = 1
		instance_create_layer(bbox_right,y,layer_get_id("Inst_doors"),obj_explosion_random)
		instance_create_layer(bbox_left,y,layer_get_id("Inst_doors"),obj_explosion_random)
	}
	with(obj_bridge_collisionblock)
	{
		instance_destroy()	
	}
	audio_stop_sound(snd_metalcrash);
	audio_play_sound(snd_metalcrash,1,false,global.sfx_volume);
	audio_sound_gain(snd_metalcrash,global.sfx_volume * 1.5,0)
	global.cutsceneID[cutsceneID] = 1
	instance_destroy()
}
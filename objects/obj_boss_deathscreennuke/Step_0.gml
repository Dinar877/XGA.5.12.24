/// @description Insert description here
// You can write your code in this editor
if (bossID > -1)
{
	if (instance_exists(bossID))
	{
		image_alpha += 0.015;
		image_xscale += 0.2;
		image_yscale += 0.2;
		
		if (!audio_is_playing(snd_missile))
		{
			sndy = audio_play_sound(snd_missile,1000,false,global.sfx_volume)
			audio_sound_gain(sndy,0,0)
			audio_sound_gain(sndy,image_alpha,0)
		}
		else if (sndy > 0)
		{
			audio_sound_gain(sndy,image_alpha,0)	
		}
	}
	else if (!instance_exists(bossID)) && (bossID != obj_darkeater_hitbox)
	{
		if (image_alpha > 0)
		{
			image_alpha -= 0.1;
		
			if (new1 = 0) && (global.sector_music > 0)
			{
				audio_stop_sound(global.sector_music)
				
				if (global.sector_active = 0)
				{
					instance_create_depth(x,y,id.depth, obj_sndmaker_mainhub);
				}
				else if (global.sector_active = 1)
				{
					if (bossID = obj_boss_bugspider_hitbox)
					{
						instance_create_depth(x,y,id.depth, obj_sndmaker_sector1);
					}
					else instance_create_depth(x,y,id.depth, obj_sndmaker_sector1_caves);
				}
				else if (global.sector_active = 2)
				{
					instance_create_depth(x,y,id.depth, obj_sndmaker_sector2);	
				}
				else if (global.sector_active = 3)
				{
					instance_create_depth(x,y,id.depth, obj_sndmaker_sector3);		
				}
				else if (global.sector_active = 4)
				{
					if (bossID = obj_boss_spider_hitbox)
					{
						instance_create_depth(x,y,id.depth, obj_sndmaker_sector4);
					}
					else instance_create_depth(x,y,id.depth, obj_sndmaker_sector4_temple);	
				}

				
				if (bossID == obj_boss_darklord_hitbox)
				or (bossID == obj_boss_gorilla_hitbox)
				or (bossID == obj_boss_turtle_hitbox)
				or (bossID == obj_boss_kingstalker_hitbox)
				{
					instance_create_depth(0,0,id.depth-1,obj_tileswapper_frozen)
				}
				
				
				new1 = 1
			}
		
			if (sndy > 0)
			{
				audio_sound_gain(sndy,image_alpha,0)	
			}
		}
		else if (!instance_exists(bossID)) && (image_alpha <= 0)
		{
			instance_destroy()
		}
	}
	else if (!instance_exists(bossID)) && (bossID == obj_darkeater_hitbox)
	&& (!instance_exists(obj_scrnDark_endgame))
	{
		instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_endgame)
	}
}
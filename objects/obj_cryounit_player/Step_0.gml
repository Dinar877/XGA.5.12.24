/// @description Insert description here
// You can write your code in this editor
if (go > 0) && (image_speed <= 0) && (image_index < image_number-1)
{
	image_speed = 1	
}

if (image_index >= 17) && (sndgo <= 0)
{
	if (!audio_is_playing(snd_player_land))
	{
		audio_play_sound(snd_player_land,1000,false,global.sfx_volume)
	}
	sndgo = 1
}

if (image_index >= image_number-1) && (go > 0)
{
	image_speed = 0	
	
	instance_activate_all()	
	
	
	with(obj_player)
	{
		global.dead = 0
		global.health1 = 100
		global.lockdown_facingDir = 0
		global.facingDir = 1
		State_machine_switch_state(Idle)	
	}
	with(object_player2_0_sprites)
	{
		sprite_index = spr_stand_right_2	
	}
	
	obj_player.x = 416
	obj_player.y = 309
	
	with(object_player2_0_sprites)
	{
		player2_0_sprites_standing()	
	}
	
	obj_camera.x = 480;
	obj_camera.y = 309;
	
	
	with(obj_darkness_effect_stationnotactive)
	{
		image_alpha = 0	
	}
	
	__view_set( e__VW.Object, 0, obj_camera);
	
	with(obj_cryounit_front)
	{
		go = 0	
	}
	
	instance_destroy(obj_camera_intro)
	global.cutscene = 0
	global.pause_player = 0
	global.pause = 0
	
	//health
	#region
		if (instance_exists(obj_link_healthUI))
		{
			with(obj_link_healthUI)
			{
				image_alpha = 1
			}
		}
		if (instance_exists(obj_healthbar))
		{
			with(obj_healthbar)
			{
				image_alpha = 1
			}
		}
		if (instance_exists(obj_healthblock1))
		{
			with(obj_healthblock1)
			{
				image_alpha = 1
			}
		}
		if (instance_exists(obj_healthblockstart))
		{
			with(obj_healthblockstart)
			{
				image_alpha = 1
			}
		}
		if (instance_exists(obj_health_sparetank_100))
		{
			with(obj_health_sparetank_100)
			{
				image_alpha = 1
			}
		}
		if (instance_exists(obj_healthnumberone))
		{
			with(obj_healthnumberone)
			{
				image_alpha = 1
			}
		}
		if (instance_exists(obj_healthnumberten))
		{
			with(obj_healthnumberten)
			{
				image_alpha = 1
			}
		}
		#endregion
	
	if (instance_exists(obj_link_map))
		{
			with(obj_link_map)
			{
				image_alpha = 1
			}
		}
	if (instance_exists(obj_maptile_tile))
		{
			with(obj_maptile_tile)
			{
				FadeNow2 = 1
				image_alpha = 1
			}
		}
	if (instance_exists(obj_maptile_tile_differentsector))
		{
			with(obj_maptile_tile_differentsector)
			{
				image_alpha = 1
			}
		}
	if (instance_exists(obj_maptile_tile_hint))
		{
			with(obj_maptile_tile_hint)
			{
				image_alpha = 1
			}
		}
	if (instance_exists(obj_maptile_tile_hint_item))
		{
			with(obj_maptile_tile_hint_item)
			{
				image_alpha = 1
			}
		}
	if (instance_exists(obj_mapborder))
		{
			with(obj_mapborder)
			{
				image_alpha = 1
			}
		}
	if (instance_exists(obj_mapborder_underside))
		{
			with(obj_mapborder_underside)
			{
				image_alpha = 1
			}
		}
	
	
	audio_group_load(audiogroup_music)
	if (audio_group_is_loaded(audiogroup_music))
	{
		global.sector_music = snf_memory_area
		audio_play_sound(global.sector_music,2000,true)
		audio_sound_gain(global.sector_music,0,0)
		audio_sound_gain(global.sector_music,global.music_volume,1500)
	}
	audio_group_load(audiogroup_sfx)
	
	instance_destroy()
}
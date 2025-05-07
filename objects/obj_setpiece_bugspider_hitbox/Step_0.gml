/// @description Insert description here
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.bossblockers[2] > 0)
{
	instance_destroy();
	exit
}

// You can write your code in this editor
if (global.cutsceneID[28] > 0) or (place_meeting(x,y,obj_block2_invisible_bossdoor))
{
	with(obj_setpiece_bugspider_sprites)
	{
		instance_destroy()	
	}
	instance_destroy();
	global.cutsceneID[28] = 1
	exit;
}

dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
if (snd1 > 0)
{
	snd1 = audio_sound_gain(snd1,100/dist,0)	
}
if (snd2 > 0)
{
	snd2 = audio_sound_gain(snd2,100/dist,0)	
}

if (on = 1) && (instance_exists(obj_setpiece_bugspider_sprites))
{
	y += 3
	
	if (instance_place(x,y,obj_block2_blocker))
		{	
			while (instance_place(x,y,obj_block2_blocker))
			{
				with(instance_place(x,y,obj_block2_blocker))
				{
					instance_destroy()
				}
			}
		}
	
	
	with(obj_setpiece_bugspider_sprites)
	{
		if (instance_number(obj_explosion_random_bugspider) < 30)
		{
			instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
		}
		if (instance_number(obj_setpiece_sector1boulder_piece) < 50)
		{
			instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_doors"),obj_setpiece_sector1boulder_piece)	
		}
		if (instance_number(obj_stalictite_piece) < 50)
		{
			var insty = instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_level_0"),obj_stalictite_piece)	
			with(insty)
			{
				direction2 = 0	
				startx = random_range(6,10)
				starty = random_range(6,10)
			}
		}
		
		if (instance_place(x,y,obj_setpiece_sector1_ground))
		{
			with(instance_place(x,y,obj_setpiece_sector1_ground))
			{
				if (image_index = 0) && (obj_setpiece_sector1_ground.image_index = 0)
				{
					image_speed = 1	
				}
			}
		}
	}

	if (instance_exists(obj_camera))
	{
		with(obj_camera)
		{
			if (yshake <= 0)
				{
					yshake = (60/other.dist)*15
					yshakeno = 5;
				
					audio_stop_sound(snd_beamexplosion)
					var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
					snd = audio_sound_gain(snd,100/other.dist,0)
				}
		}
	}
	
	if (!audio_is_playing(snd_rockimpact1))
	{
		snd1 = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		snd1 = audio_sound_gain(snd1,100/dist,0)
	}
	
	if (!audio_is_playing(snd_rockimpact2))
	{
		snd2 = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)
		snd2 = audio_sound_gain(snd2,100/dist,0)
	}
}
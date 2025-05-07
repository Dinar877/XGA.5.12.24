/// @description Insert description here
// You can write your code in this editor
timer += (1/room_speed)

if (timer >= 4) && (sprite_index == spr_xga_replicator_bg1) && (spawn1 = 0) && (!instance_exists(obj_alarm_scrneffect))
{
	instance_create_layer(x+144,y+119,layer_get_id("Inst_healthui_mapborder"),obj_xga_energycircle)
	instance_create_layer(x,y,layer_get_id("Inst_healthui_mapborder"),obj_darkness_effect_stationnotactive)
	with(obj_darkness_effect_stationnotactive)
	{
		image_alpha = 0	
	}
	instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui_mapborder"),obj_static_scrneffect)
	with(obj_static_scrneffect)
	{
		image_alpha = 0.7
		on = 1
	}
	timer = 0
	spawn1 = 1
}

if (timer >= 6) && (sprite_index == spr_xga_replicator_bg1) && (on = 0) && (!instance_exists(obj_alarm_scrneffect)) && (spawn1 = 1)
{
	with(obj_xga_replicator_bg1_egg)
	{
		sprite_index = spr_xga_replicator_bg_egg_dissolve	
	}
	with(obj_xga_replicator_bg1_relic)
	{
		sprite_index = spr_xga_replicator_bg_relic_dissolve	
	}
	on = 1
}

if (on = 2)
{
	if (!instance_exists(obj_alarm_scrneffect))
	{
		audio_stop_sound(snf_memory_area)	
		instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_scrn"),obj_alarm_scrneffect)
	}
	
	if (sprite_index == spr_xga_replicator_bg1) 
	{
		sprite_index = spr_xga_replicator_bg1_shatter1	
		timer = 0
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		with(obj_camera)
		{
			yshake = 3
			yshakeno = 3
		}
	}
	else if (sprite_index == spr_xga_replicator_bg1_shatter1) && (timer > 4)
	{
		sprite_index = spr_xga_replicator_bg1_shatter2
		timer = 0
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		with(obj_camera)
		{
			yshake = 3
			yshakeno = 3
		}
		with(obj_xga_replicator_bg1_xga)
		{
			on = 1
		}
	}
	else if (sprite_index == spr_xga_replicator_bg1_shatter2) && (timer > 4)
	{
		sprite_index = spr_xga_replicator_bg1_shatter3
		timer = 0
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		with(obj_camera)
		{
			yshake = 3
			yshakeno = 3
		}
	}
	else if (sprite_index == spr_xga_replicator_bg1_shatter3) && (timer > 4)
	{
		sprite_index = spr_xga_replicator_bg1_shatter4
		timer = 0
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		with(obj_camera)
		{
			yshake = 3
			yshakeno = 3
		}
	}
	else if (sprite_index == spr_xga_replicator_bg1_shatter4) && (timer > 4)
	{
		on = 3
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		with(obj_camera)
		{
			yshake = 3
			yshakeno = 3
		}
	}
}

if (on = 3)
{
	audio_sound_gain(snd_alarm,0,4000)	
	audio_stop_sound(snd_heartbeat)
	audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)	
	audio_sound_gain(snd_glass_shatter,0,0)	
	audio_sound_gain(snd_glass_shatter,1,0)	
	on = 4
}
else if (on = 4) && (!audio_is_playing(snd_glass_shatter))
{
	audio_play_sound(snd_xga_roar,1000,false,global.sfx_volume)	
	on = 5
}
else if (on = 5) && (!audio_is_playing(snd_xga_roar))
{
	on = 6
	switch1 = 1
	audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)	
}

if (on = 6) && (!audio_is_playing(snd_beamexplosion1)) && (switch1 > 0)
{
	audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)	
	audio_sound_gain(snd_beamexplosion1,switch1,0)
	switch1 -= (1/5)
}
else if (on = 6) && (!audio_is_playing(snd_beamexplosion1)) && (switch1 <= 0)
{
	instance_activate_all()
	audio_stop_sound(snd_beamexplosion1)
	room_goto(rm_9_10_1)
	audio_stop_sound(snd_heartbeat)
	global.cutscene = 1
	global.pause_player = 0
	global.camera_shiftdown = 0
	instance_destroy()	
}
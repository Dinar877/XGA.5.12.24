/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause_exit = 1)
or (global.boss_warning = 1)
 or (global.cutscene_suit = 1)
{
	exit;	
}


if (go > 0) && (image_speed <= 0) && (image_index < image_number-1)
{
	image_speed = 1	
}

if (image_index >= 29) && (image_index < 39) && (sndgo = 0)
{
	var snd = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
	audio_sound_set_track_position(snd,2)
	sndgo = 1
}
else if (image_index >= 39)
{
	audio_stop_sound(snd_electricity)
}

if (image_index >= image_number-1) && (go > 0)
{
	image_speed = 0	
	
	instance_activate_all()	
	
	
	with(obj_player)
	{
		global.dead = 0
		global.health1 = 8
		global.lockdown_facingDir = 0
		State_machine_switch_state(Idle)	
	}
	
	if (facing = 1)
	{
		with(object_player2_0_sprites)
		{
			sprite_index = spr_stand_right_2	
			image_alpha = 1
			suit_timer = 0
		}
	}
	else if (facing = -1)
	{
		with(object_player2_0_sprites)
		{
			sprite_index = spr_stand_left_2	
			image_alpha = 1
			suit_timer = 0
		}
	}
	
	if (room == rm_trueintro_3_shattered)
	{
		obj_player.x = 479
		obj_player.y = 309
	
		with(object_player2_0_sprites)
		{
			player2_0_sprites_standing()	
			FadeNow_trueintro = 0
		}
	
		obj_camera.x = 479
		obj_camera.y = 309
	
		audio_group_load(audiogroup_music)
		if (audio_group_is_loaded(audiogroup_music))
		{
			Music_loop(ost_dark_remastered,0.123, 90.46);
		}
		audio_group_load(audiogroup_sfx)
	}
	else if (room == rm_midgame_cutscsne_room)
	{
		obj_player.x = x+(global.facingDir*6)
		obj_player.y = y
	
		with(object_player2_0_sprites)
		{
			player2_0_sprites_standing()	
		}
	
		obj_camera.x = x+(global.facingDir*3)
		obj_camera.y = y
	}
	
	
	__view_set( e__VW.Object, 0, obj_camera);
	instance_destroy(obj_camera_intro)
	
	if (instance_exists(obj_originalHP_block_start)) && (instance_exists(obj_healthnumberone)) && (instance_exists(obj_healthnumberten))
	&& (instance_exists(obj_mapborder)) && (instance_exists(obj_mapborder_underside)) && (instance_exists(obj_maptile_tile))
	{
		obj_originalHP_block_start.image_alpha = 0
		obj_healthnumberone.image_alpha = 0
		obj_healthnumberten.image_alpha = 0
		obj_mapborder.image_alpha = 0
		obj_mapborder_underside.image_alpha = 0
		obj_maptile_tile.image_alpha = 0
	}
	
	global.cutscene = 0
	global.pause_player = 0
	global.pause = 0
	
	
	
	
	instance_destroy()
}
/// @description Insert description here
// You can write your code in this editor

//cutscene-waking up, born
	if (sprite_index = spr_trueintro_player_getup_2_player) && (round(image_index) == 51) && (image_index < image_number-1) && (!audio_is_playing(snd_robot_move_1))
	{
		var snd = audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume)
	}
	
	if (sprite_index = spr_trueintro_player_getup_2_player) && (round(image_index) == 76) && (image_index < image_number-1) && (!audio_is_playing(snd_robot_move_1))
	{
		var snd = audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume)
	}
	
	if (sprite_index = spr_trueintro_player_getup_2_player) && (round(image_index) == 122) && (image_index < image_number-1) && (!audio_is_playing(snd_robot_move_2))
	{
		var snd = audio_play_sound(snd_robot_move_2,1000,false,global.sfx_volume)
	}

if (image_index >= 21) && (sndgo <= 0)
{
	if (!audio_is_playing(snd_player_land))
	{
		audio_play_sound(snd_player_land,1000,false,global.sfx_volume)
	}
	sndgo = 1
}

if (image_index >= image_number-1)
{
	image_speed = 0	
	audio_stop_sound(snd_robot_move_2)
	instance_activate_all()	
	
	obj_player.x = 448
	obj_player.y = 293
	object_player2_0_sprites.x = 448
	object_player2_0_sprites.y = 294
	obj_camera.x = 480;
	obj_camera.y = 277+16;
	
	with(obj_player)
	{
		global.dead = 0
		global.health1 = 8
		global.lockdown_facingDir = 0
		global.facingDir = 1
		State_machine_switch_state(Idle)	
	}
	with(object_player2_0_sprites)
	{
		sprite_index = spr_stand_right_2
	}
	
	__view_set( e__VW.Object, 0, obj_camera);
	
	instance_destroy(obj_camera_intro)
	instance_destroy(obj_blackhole_bg)
	global.cutscene = 0
	global.pause_player = 0
	global.pause = 0
	global.mode_test = 0
	
	
	
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
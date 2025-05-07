/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (snd > -1)
{
	if (audio_is_playing(snd)) && (audio_sound_get_track_position(snd) >= 1.3)
	{
		audio_stop_sound(snd)
		snd = -1
	}
}

//boss invincibility effect
//boss_invincibility()

if (shoottimer < 1)
{
	image_speed = 0
	image_index = 0
	if (spawntimer >= 1)
	{
		instance_create_depth(x,y+26,id.depth-1,obj_chunk_slow)
		instance_create_depth(x,y+26,id.depth-1,obj_chunk_slow)
		spawntimer = 0
	}
	else spawntimer += 0.3
	shoottimer += 0.01
}
else if (shoottimer >= 1)
{
	if (image_speed = 0)
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
	}
	
	if (image_index >= 2) && (image_index <= 30) && (!instance_exists(obj_boss_flowey_eyehitbox))
	{
		instance_create_depth(id.x,id.y-31,id.depth-1,obj_boss_flowey_eyehitbox)
	}
	else if (image_index > 30)
	{
		instance_destroy(obj_boss_flowey_eyehitbox)
	}
	
	image_speed = 1
	//getting hurt by shit
	var inst4 = (instance_nearest(x,y,obj_bullet))

	if (hp > 0)
	{
	enemy_hurt_player_code(1)
	}

	if (image_index >= image_number-1)
	{
		audio_stop_sound(snd_swordswoosh)
		instance_destroy()	
		exit
	}
}
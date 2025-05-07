/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.bossblockers[BossblockerID] > 0)
{	
	instance_destroy()
	exit;
}

if (global.cutsceneID[cutsceneID] > 0) && (bigon = 0)
{
	instance_create_depth(bbox_left,y,id.depth-1,obj_flowey_separatevine_right)
	instance_create_depth(bbox_right,y,id.depth-1,obj_flowey_separatevine_left)
	bigon = 1
	with(obj_flowey_separatevine_left)
	{
		image_index = image_number-1	
	}
	with(obj_flowey_separatevine_right)
	{
		image_index = image_number-1	
	}
}

if (snd > -1)
{
	if (audio_is_playing(snd)) && (audio_sound_get_track_position(snd) >= 1.3)
	{
		audio_stop_sound(snd)
		snd = -1
	}
}

if (place_meeting(x,y,obj_player)) && (bigon = 0)
{
	on = 1
}

if (on > 0) && (timer < 1) && (bigon = 0)
{
	timer += 6/60
	instance_create_depth(bbox_left,y,id.depth-1,obj_explosion_normalhit_chunk_afterexplosion)
	instance_create_depth(bbox_right,y,id.depth-1,obj_explosion_normalhit_chunk_afterexplosion)
}
else if (on > 0) && (timer >= 1) && (bigon = 0)
{
	on = 0
	bigon = 1
	snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
	audio_sound_set_track_position(snd,0.6)
	instance_create_depth(bbox_left,y,id.depth-1,obj_flowey_separatevine_right)
	instance_create_depth(bbox_right,y,id.depth-1,obj_flowey_separatevine_left)
}
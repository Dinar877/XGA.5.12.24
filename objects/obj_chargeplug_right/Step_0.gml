/// @description Insert description here
// You can write your code in this editor

//using object's instance id
RedblockerID_check()

if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_electricity)
	exit;	
}
else
{
	audio_resume_sound(snd_electricity)	
	
	//if electricity sound gets stopped somehow
	if (!audio_is_playing(snd_electricity))
	&& (audio_emitter_exists(global.inst_audio_emitterID[inst_n]))
	{
		audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_electricity,true,1000, global.sfx_volume)
	}
}



//line 1.activate first
//line 2.when active in general
if (place_meeting(id.x,id.y,obj_player)) && (global.dash2_spark = 1) && (open = 0) && (global.doors_redblocker[redblockerID] <= 0)
{
	var snd = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
	audio_sound_set_track_position(snd,2)
	audio_sound_gain(snd,global.sfx_volume,0)
	audio_sound_gain(snd,0,3000)
		
	instance_create_depth(x,y,id.depth-1,obj_chargeplug_electricity)
	
	open = 1
	sprite_index = spr_chargeplug_active_right
	
	global.doors_redblocker[redblockerID] = 1;
	
	if (instance_exists(obj_chargelock))
	{
		with(obj_chargelock)
		{
			sprite_index = spr_corelock_opening
			image_index = 0
		}
	}
}
else if (global.doors_redblocker[redblockerID] > 0)
{
	open = 1
	sprite_index = spr_chargeplug_active_right
	global.doors_redblocker[redblockerID] = 1;
	
	//change other chargeplug objects
	if (instance_exists(obj_chargelock))
	{
		with(obj_chargelock)
		{
			open = 1
		}
	}
	if (instance_exists(obj_chargeplug_cable))
	{
		with(obj_chargeplug_cable)
		{
			active = 1
		}
	}
	if (instance_exists(obj_chargeplug_switch))
	{
		with(obj_chargeplug_switch)
		{
			redblockerID = other.redblockerID
		}
	}
	
	//audio
	dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
	audio_emitter_gain(global.inst_audio_emitterID[inst_n], (60/dist) * global.sfx_volume)
}
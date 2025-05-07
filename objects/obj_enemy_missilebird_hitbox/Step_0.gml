/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)) or (place_meeting(x,y,obj_player))
{
	if (!audio_is_playing(snd_beamexplosion))
	{
		snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1200)
	}
	else if (audio_is_playing(snd_beamexplosion))
	{
		audio_stop_sound(snd_beamexplosion)
		snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1200)
	}
	
	audio_stop_sound(snd_missile)
	instance_create(x,y,obj_explosion6)
	instance_destroy()
	exit
}
else if (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
{
	x += hspd
	y += vspd
}
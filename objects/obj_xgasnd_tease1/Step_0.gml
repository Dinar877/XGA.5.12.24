/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[Cutscenes.xgaTease1] > 0)
{
	instance_destroy()
	exit;
}

if (on = 0) && (!audio_is_playing(snd_xga_roar)) && (!audio_is_playing(snd_beamexplosion1))
{
	on = 1
	sndID = audio_play_sound(snd_xga_roar,1000,false,global.sfx_volume)
	audio_sound_gain(snd_xga_roar,0,0)
	audio_sound_gain(snd_xga_roar,0.4,0)
}

if (footstep_volume > 0) && (!audio_is_playing(snd_xga_roar)) && (on = 1)
{
	if (!audio_is_playing(snd_beamexplosion1))
	{
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		audio_sound_gain(snd_beamexplosion1,footstep_volume,0)
		if (instance_exists(obj_camera))
		{
			with(obj_camera)
			{
				yshake = 2
				yshakeno = 3
			}
		}
	}
	footstep_volume -= (1/60)/5
	
}
else if (footstep_volume <= 0)
{
	global.cutsceneID[Cutscenes.xgaTease1] = 1
	instance_destroy()
}
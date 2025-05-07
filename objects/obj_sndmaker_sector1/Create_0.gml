/// @description Insert description here
// You can write your code in this editor
if (global.corrupted <= 0)
{
	sndID = ost_sector1_remastered
}
else if (global.corrupted > 0)
{
	sndID = ost_ice_sfx_remastered
}

/*
if (audio_is_playing(global.sector_music) > 0) && (sndID != global.sector_music)
		{
			audio_sound_gain(global.sector_music,0,700)
		}
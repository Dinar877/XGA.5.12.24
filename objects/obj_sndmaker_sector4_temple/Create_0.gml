/// @description Insert description here
// You can write your code in this editor
if (global.corrupted <= 0)
{
	sndID = ost_sector4_remastered
}
else sndID = ost_sector4_cor_remastered

/*
if (audio_is_playing(global.sector_music) > 0) && (sndID != global.sector_music)
		{
			audio_sound_gain(global.sector_music,0,700)
		}
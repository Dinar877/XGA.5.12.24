/// @description Insert description here
// You can write your code in this editor
sndID = ost_old_sector2
if (audio_is_playing(global.sector_music) > 0) && (sndID != global.sector_music)
		{
			audio_sound_gain(global.sector_music,0,700)
		}
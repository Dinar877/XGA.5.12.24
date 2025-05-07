/// @description Insert description here
// You can write your code in this editor
if (audio_is_playing(global.sector_music) > 0) && ((audio_sound_get_gain(global.sector_music)) <= 0) && (sndID != global.sector_music)
		{
			audio_stop_sound(global.sector_music)
			
			global.sector_music = ost_old_sector2
			
			audio_play_sound(global.sector_music,700,true)
			audio_sound_gain(global.sector_music,0,0)
			audio_sound_gain(global.sector_music,global.music_volume,700)
			sndID = -1
		}
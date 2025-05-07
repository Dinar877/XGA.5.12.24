/// @description Insert description here
// You can write your code in this editor
if (audio_is_playing(global.sector_music) > 0) && ((audio_sound_get_gain(global.sector_music)) <= 0) && (sndID != global.sector_music)
		{
			audio_stop_sound(global.sector_music)
			
			global.sector_music = sndID
			
			audio_play_sound(global.sector_music,700,false)
			audio_sound_gain(global.sector_music,0,0)
			audio_sound_gain(global.sector_music,global.music_volume,700)
			sndID = -1
			instance_destroy()
		}
else if (!audio_is_playing(sndID)) or ((audio_sound_get_gain(sndID)) <= 0)
		{
			audio_stop_sound(global.sector_music)
			
			global.sector_music = sndID
			
			audio_play_sound(global.sector_music,700,false)
			audio_sound_gain(global.sector_music,0,0)
			audio_sound_gain(global.sector_music,global.music_volume,700)
			sndID = -1
			instance_destroy()
		}
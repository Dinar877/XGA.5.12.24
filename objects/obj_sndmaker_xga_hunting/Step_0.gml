/// @description Insert description here
// You can write your code in this editor

//stop current music if not xga chase music
if (audio_is_playing(global.sector_music) > 0) && (sndID != global.sector_music)
{
	audio_stop_sound(global.sector_music)
}	

global.sector_music = sndID
			
Music_loop(sndID, 0.0, 41.0)

sndID = -1
instance_destroy()
		

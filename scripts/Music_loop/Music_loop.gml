// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Music_loop(){
	
	//if previous music is playing, record then stop it, otherwise set variables to zero
	if (audio_is_playing(global.sector_music)) && (global.sector_music != argument0) && (!audio_is_playing(argument0))
	{
		var ogSectorMusic = global.sector_music;
		var ogSndPosition = audio_sound_get_track_position(global.sector_music);
		
		audio_stop_sound(global.sector_music);
	}
	else 
	{
		var ogSectorMusic = 0;
		var ogSndPosition = 0;
	}
	
	if (!audio_is_playing(argument0)) or ((audio_sound_get_gain(argument0)) <= 0)
	{
		//to prevent 2 of the same song playing at once
		audio_stop_sound(argument0);
		
		global.sector_music = argument0;
		audio_play_sound(global.sector_music, 1000, true); //only plays once for sector1 music, for some reason. When switching from new music to this again, it refuses to play.
		audio_sound_gain(global.sector_music, 0, 0);
		audio_sound_gain(global.sector_music, global.music_volume, 2000);
			
		//for testing purposes
		//var sndIDLength = audio_sound_length(argument0);
		//audio_sound_set_track_position(sndID, sndIDLength - 10.0);
			
		if (ogSectorMusic > 0)
		{
			var ogSectorMusicLength = audio_sound_length(ogSectorMusic);
				
			if (ogSndPosition <= ogSectorMusicLength)
			{	
				audio_sound_set_track_position(global.sector_music, ogSndPosition);	
			}
		}
		

		//loop correctly
		audio_sound_loop(argument0,true); //music id
		audio_sound_loop_start(argument0, argument1); //start loop
		audio_sound_loop_end(argument0, argument2); //end loop
	}
}
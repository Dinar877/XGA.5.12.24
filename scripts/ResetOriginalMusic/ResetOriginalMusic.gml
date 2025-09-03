// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetOriginalMusic(){
	//reset to original music if escaped xga
	if (global.sector_music_xga > 0) 
	&& ((global.sector_music = ost_xga_chasemusic) or (global.sector_music = snd_xga_heartbeat))
	&& (!instance_exists(obj_darkeater_hitbox))
	{
		//if xga was chasing you, but you got away/died
		if ((instance_exists(obj_NEWsav_bottom))
		or (instance_exists(obj_navigation_pillar1))
		or (instance_exists(obj_elevator_bottom)))
		&& (global.darkeater_active == true)
		{
			global.darkeater_active = false;
			
			if (audio_is_playing(ost_xga_chasemusic))
			{
				audio_stop_sound(ost_xga_chasemusic);
			}
			if (audio_is_playing(snd_xga_heartbeat))
			{
				audio_stop_sound(snd_xga_heartbeat);
			}
			
			global.sector_music = global.sector_music_xga;
			global.sector_music_xga = 0;
		
			//get previous music based on what global.sector_music is
			RefMusicLoop()
		}
		else if ((instance_exists(obj_harmful_electricity_lr_nano))
		or (instance_exists(obj_harmful_electricity_ud_nano)))
		&& (global.darkeater_active == true)
		{
			global.darkeater_active = false;
			
			if (audio_is_playing(ost_xga_chasemusic))
			{
				audio_stop_sound(ost_xga_chasemusic);
			}
			if (audio_is_playing(snd_xga_heartbeat))
			{
				audio_stop_sound(snd_xga_heartbeat);
			}
			
			global.sector_music = global.sector_music_xga;
			global.sector_music_xga = 0;
		
			//get previous music based on what global.sector_music is
			RefMusicLoop()
		}
		else if (global.darkeater_active == false)
		{
			if (audio_is_playing(ost_xga_chasemusic))
			{
				audio_stop_sound(ost_xga_chasemusic);
			}
			if (audio_is_playing(snd_xga_heartbeat))
			{
				audio_stop_sound(snd_xga_heartbeat);
			}
			
			global.sector_music = global.sector_music_xga;
			global.sector_music_xga = 0;
		
			//get previous music based on what global.sector_music is
			RefMusicLoop()
		}
	}
}
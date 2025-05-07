// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetOriginalMusic(){
	//reset to original music if escaped xga
	if (global.sector_music_xga > 0) 
	&& ((global.sector_music = ost_xga_chasemusic) or (global.sector_music = snd_xga_heartbeat))
	{
		global.sector_music = global.sector_music_xga;
		//get previous music based on what global.sector_music is
		RefMusicLoop()
	}
}
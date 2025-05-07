global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1

global.doorpath3 = rm_tutorial_NEWsave_LR

if (global.bossblockers[1] <= 0)
{
	if (audio_is_playing(snd_preboss) > 0)
		{
			audio_stop_sound(snd_preboss)
		}
}

global.mapgrid_startroomx = 10;
global.mapgrid_startroomy = 17;
global.mapgrid_totalCheckers = 4; 
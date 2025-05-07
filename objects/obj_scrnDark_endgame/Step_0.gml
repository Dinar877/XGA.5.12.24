/// @description Insert description here
// You can write your code in this editor
if (!endload) && (room != rm_endgame_TEXT)
{
	if (image_alpha < 1)
	{
		image_alpha += 0.025;
	}
	else if (image_alpha >= 1)
	{
		audio_stop_all()
		audio_play_sound(ost_facingahugereaction,1000,true,global.music_volume)
		
		room_goto(rm_endgame_TEXT)
	}
}

if (room = rm_endgame_TEXT)
{
	image_alpha -= 0.01;
	
	if (image_alpha <= 0)
	{
		instance_destroy()	
		exit
	}
}


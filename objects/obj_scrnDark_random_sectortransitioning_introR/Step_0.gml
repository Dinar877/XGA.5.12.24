/// @description Insert description here
// You can write your code in this editor
timer += 0.01;

if (timer >= 1)
{

	image_alpha += 0.025;

	if (image_alpha >= 1)
	{
		instance_activate_all()
		audio_stop_sound(snd_tram_going)
		room_goto(global.sector_next_right)
	}

}
/// @description Insert description here
// You can write your code in this editor
if (!audio_is_playing(snd_xga_roar))
{
	image_alpha -= 0.005;
}



if (image_alpha <= 0)
{
	with(obj_cryounit_front)
	{
		go = 1	
	}
	
	instance_destroy()	
}
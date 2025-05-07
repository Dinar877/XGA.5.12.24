/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_camera))
{
	x = obj_camera.x
	y = obj_camera.y
}


if (on = 1) && (image_alpha > 0)
{
	image_alpha -= 1/30
	timer1 -= 1/10
	if (snd = -1)
	{
		snd = audio_play_sound(snd_static,1000,false,global.sfx_volume)
		audio_sound_set_track_position(snd,2)
	}
	audio_sound_gain(snd,image_alpha,0)
}

if (on = 1) && (image_alpha <= 0)
{
	instance_destroy()
	audio_stop_sound(snd_static)
}
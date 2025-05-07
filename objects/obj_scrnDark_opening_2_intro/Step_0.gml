/// @description Insert description here
// You can write your code in this editor
image_alpha += 0.005;

x = obj_camera_intro.x-170
y = obj_camera_intro.y-100

if (image_alpha >= 1)
{
	instance_activate_all()
	audio_stop_sound(snd_beamexplosion1)
	
	if (global.mode_test > 0)
	{
		room_goto(rm_9_10_1)
	}
	else room_goto(rm_9_10_1_xgatest)
	
	instance_destroy()	
}
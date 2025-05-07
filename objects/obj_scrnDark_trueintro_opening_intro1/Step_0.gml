/// @description Insert description here
// You can write your code in this editor
image_alpha += (1/60);

if (image_alpha >= 1)
{
	instance_activate_all()
	audio_stop_all()
	room_goto(rm_trueintro_1)
	
	instance_destroy()	
}
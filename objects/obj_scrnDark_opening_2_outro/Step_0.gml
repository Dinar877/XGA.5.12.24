/// @description Insert description here
// You can write your code in this editor
if (!audio_is_playing(snd_xga_roar))
{
	image_alpha -= 0.005;
}

x = obj_camera_intro.x-170
y = obj_camera_intro.y-100

if (image_alpha <= 0)
{
	instance_create_depth(x,y,id.depth-1,obj_scrnDark_opening_2_intro)
	instance_destroy()	
}
/// @description Insert description here
// You can write your code in this editor
image_alpha -= (1/60)/10;

if (counter < 1) && (room = rm_trueintro_1)
{
	counter += (1/60)/10
	y = lerp(y,277-90+17,0.02)
	with(obj_camera_intro)
	{
		y = lerp(y,277+17,0.02)
	}
}
else if (counter < 1) && (room = rm_trueintro_opening_TEXT)
{
	counter += (1/60)/10
	with(obj_camera_intro)
	{
		y = lerp(y,111,0.01)
	}
}

if (image_alpha <= 0)
{
	instance_destroy()	
}
/// @description Insert description here
// You can write your code in this editor


if (image_index >= image_number - 1) && (image_speed != 0)
{
	image_speed = 0;
	active = 1
}

if (obj_scrn_roomtransition.fadeout1 = 1)
{
	image_speed = -1	
}

if (image_index <= 0) && (image_speed = -1)
{
	image_speed = 0;
	instance_destroy()
}

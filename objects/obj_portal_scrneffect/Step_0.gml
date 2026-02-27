/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	x = obj_camera.x;
	y = obj_camera.y;
}

if (image_alpha > 0)
{
	image_alpha -= 0.01	
}
else instance_destroy()
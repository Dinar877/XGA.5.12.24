// @description Insert description here
// You can write your code in this editor
if (image_index < image_number-1)
{
	image_speed = 0.5;
}
if (image_index >= image_number-1) && (started_dashsmoke = 0)
{
	sprite_index = -1;
	instance_destroy();
}
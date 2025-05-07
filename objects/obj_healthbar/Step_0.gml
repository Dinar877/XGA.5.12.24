//xga intro effect
if (image_alpha <= 1) && (instance_exists(obj_player)) && (global.cutscene = 0)
{
	image_alpha += (1/room_speed)/2
}
else if (image_alpha >= 1) && (global.cutscene = 1)
{
	image_alpha = 0
}

if (global.health1 > 0)
{
image_index = (global.health1 div 2);
}
else image_index = 0;
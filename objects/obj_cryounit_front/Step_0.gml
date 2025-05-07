/// @description Insert description here
// You can write your code in this editor
if (go > 0) && (image_speed <= 0) && (image_index < image_number-1)
{
	image_speed = 1	
}

if (image_index >= image_number-1) && (go > 0) && (global.cutscene > 0)
{
	image_speed = 0	
	id.depth = obj_cryounit_player.depth+1
	with(obj_cryounit_player)
	{
		go = 1	
	}
}
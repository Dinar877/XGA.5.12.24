/// @description Insert description here
// You can write your code in this editor
timer = 0;
xx = 0;

if (global.corrupted > 0)
{
	instance_destroy()	
	exit
}

if (instance_number(obj_petal) < 20)
{
	while (instance_number(obj_petal) < 20)
	{
		instance_create_layer(random_range(bbox_left,bbox_right),random_range(bbox_top,bbox_bottom),layer_get_id("Inst_afterimages"), obj_petal)	
	}
}
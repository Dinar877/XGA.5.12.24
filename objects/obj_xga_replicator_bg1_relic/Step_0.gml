/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_xga_replicator_bg_relic_dissolve) && (image_index >= image_number-1)
{
	with(obj_xga_replicator_bg1)
	{
		on = 2	
	}
	instance_destroy()	
}
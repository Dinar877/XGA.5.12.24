/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1)
{
	instance_create_layer(x,y,layer_get_id("Inst_level_0" ),obj_stalictite_icecave_spike1)	
	instance_destroy();
}
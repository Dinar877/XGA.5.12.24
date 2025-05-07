/// @description Insert description here
// You can write your code in this editor
if (global.corrupted > 0)
{
	instance_destroy()
	exit
}


instance_create(bbox_left-16,bbox_top+24,obj_block2)
instance_create(bbox_left,bbox_top+22,obj_block2)
instance_create(bbox_left+16,bbox_top+22,obj_block2)
instance_create(bbox_left+32,bbox_top+22,obj_block2)
instance_create(bbox_left+48,bbox_top+22,obj_block2)
instance_create(bbox_left+64,bbox_top+22,obj_block2)
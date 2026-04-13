/// @description Insert description here
// You can write your code in this editor
am_ledge = 0

if (global.midgame = 1)
{
	instance_destroy()	
	exit
}

instance_create_depth(x-8,y-56,depth-1,obj_block2)
instance_create_depth(x-8,y-40,depth-1,obj_block2)
instance_create_depth(x-8,y-24,depth-1,obj_block2)
instance_create_depth(x-8,y-8,depth-1,obj_block2)
instance_create_depth(x-8,y+8,depth-1,obj_block2)
instance_create_depth(x-8,y+56,depth-1,obj_block2)
instance_create_depth(x-8,y+40,depth-1,obj_block2)
instance_create_depth(x-8,y+24,depth-1,obj_block2)

layer = layer_get_id("Inst_doors")

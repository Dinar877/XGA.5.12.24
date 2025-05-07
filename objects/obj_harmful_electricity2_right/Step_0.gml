/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy()	
}



if (go = 1) && (stop = 0)
{
	stop = 1	
	sprite_index = spr_harmful_electricity2_right
	instance_create_layer(x,bbox_top+8,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+16,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+24,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+32,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+40,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+48,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+56,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+64,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+72,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	
	
	instance_create_layer(x,bbox_top+80,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+88,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+96,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+104,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+112,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+120,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+128,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+136,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	instance_create_layer(x,bbox_top+144,layer_get_id("Inst_level_0"),obj_block2_blocker1)
	
	with(obj_block2_blocker)
	{
		//redblockerID = 300
	}
	
	with(obj_harmful_electricity2_left)
	{
		sprite_index = spr_harmful_electricity2_left
	}
}
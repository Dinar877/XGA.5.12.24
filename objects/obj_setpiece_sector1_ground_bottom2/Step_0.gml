/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.cutsceneID[Cutscenes.bugspiderDrill] > 0) or (global.bossblockers[bossblockers.bugspider] > 0)
{
	instance_destroy();
	exit;
}

if (position_meeting(x,y,obj_setpiece_bugspider_hitbox))
{
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), layer_get_id("Inst_doors"),obj_explosion_random_bugspider)

	instance_destroy()
}
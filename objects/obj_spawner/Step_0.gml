/// @description Insert description here
// You can write your code in this editor
if (off = 0) && (!instance_exists(obj_bullet_creator))
{
	off = 1
	instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_walljumpeffect);
	instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_blast_effect);
	instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_walljumpeffectleft);
	instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_screwjump_sparks);
	instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_bullet_creator);
	instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_player_dashfire);	
}



//xga
if (global.corrupted > 0)
{
	//instance_create_depth(x,y,id.depth,obj_sndmaker_endallmusic)
	
	///////door borders
	if (instance_exists(obj_door_border_left)) && (global.room_transition_notnowL1 == 1)
	{
		instance_create_layer(obj_door_border_left.x-3,obj_door_border_left.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_border_left_2)) && (global.room_transition_notnowL2 == 1)
	{
		instance_create_layer(obj_door_border_left_2.x-3,obj_door_border_left_2.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_border_left_more)) && (global.room_transition_notnowL_more == 1)
	{
		instance_create_layer(obj_door_border_left_more.x-3,obj_door_border_left_more.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_border_right)) && (global.room_transition_notnowR1 == 1)
	{
		instance_create_layer(obj_door_border_right.x+3,obj_door_border_right.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_border_right_2)) && (global.room_transition_notnowR2 == 1)
	{
		instance_create_layer(obj_door_border_right_2.x+3,obj_door_border_right_2.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_border_right_more)) && (global.room_transition_notnowR_more == 1)
	{
		instance_create_layer(obj_door_border_right_more.x+3,obj_door_border_right_more.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_normal_left)) && (global.room_transition_notnowL1 == 1)/////////////////////////////////////////////////////////////////////////////////////////////normal doors
	{
		instance_create_layer(obj_door_normal_left.x-10,obj_door_normal_left.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_normal_leftAlt)) && (global.room_transition_notnowL2 == 1)
	{
		instance_create_layer(obj_door_normal_leftAlt.x-10,obj_door_normal_leftAlt.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_normal_left_more)) && (global.room_transition_notnowL_more == 1)
	{
		instance_create_layer(obj_door_normal_left_more.x-10,obj_door_normal_left_more.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_normal_right)) && (global.room_transition_notnowR1 == 1)
	{
		instance_create_layer(obj_door_normal_right.x+10,obj_door_normal_right.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_normal_rightAlt)) && (global.room_transition_notnowR2 == 1)
	{
		instance_create_layer(obj_door_normal_rightAlt.x+10,obj_door_normal_rightAlt.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	else if (instance_exists(obj_door_normal_right_more)) && (global.room_transition_notnowR_more == 1)
	{
		instance_create_layer(obj_door_normal_right_more.x+10,obj_door_normal_right_more.y,layer_get_id("Inst_level_0"),obj_xga_coords);
	}
	
	
	instance_destroy()
	exit
}
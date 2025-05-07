/// @description Insert description here
// You can write your code in this editor

//for new RedblockerID's
if (redblockerID <= 0)
{
	RedblockerID()	
}


if (global.doors_redblocker[redblockerID] > 0)// or (global.corrupted > 0)
{
	instance_destroy();
	exit
}
else if (global.doors_redblocker[redblockerID] == 0) && (activated == 0)
{
	image_alpha = 1;
	activated = 1;
	if (doorleft)
	{
		sprite_index = spr_doorstopper_left_original_shield;
		x = obj_door_normal_left.x;
		y = obj_door_normal_left.y;
		
		if (!instance_place(bbox_left+8,y,obj_block_door))
		{
			blockdoorID = instance_create(bbox_left+8,y,obj_block_door);
		}
		
		with(obj_door_normal_left)
		{
			image_alpha = 0;
		}
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_left_original_shield;
		x = obj_door_normal_leftAlt.x;
		y = obj_door_normal_leftAlt.y;
		
		if (!instance_place(bbox_left+8,y,obj_block_door))
		{
			blockdoorID = instance_create(bbox_left+8,y,obj_block_door);
		}
		
		with(obj_door_normal_leftAlt)
		{
			image_alpha = 0;
		}
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_right_original_shield;
		x = obj_door_normal_right.x;
		y = obj_door_normal_right.y;
		
		if (!instance_place(bbox_right-8,y,obj_block_door))
		{
			blockdoorID = instance_create(bbox_right-8,y,obj_block_door);
		}
		
		with(obj_door_normal_right)
		{
			image_alpha = 0;
		}
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_right_original_shield;
		x = obj_door_normal_rightAlt.x;
		y = obj_door_normal_rightAlt.y;
		
		if (!instance_place(bbox_right-8,y,obj_block_door))
		{
			blockdoorID = instance_create(bbox_right-8,y,obj_block_door);
		}
		
		with(obj_door_normal_rightAlt)
		{
			image_alpha = 0;
		}
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_right_original_shield;
		x = obj_door_normal_right_more.x;
		y = obj_door_normal_right_more.y;
		
		if (!instance_place(bbox_right-8,y,obj_block_door))
		{
			blockdoorID = instance_create(bbox_right-8,y,obj_block_door);
		}
		
		with(obj_door_normal_right_more)
		{
			image_alpha = 0;
		}
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_left_original_shield;
		x = obj_door_normal_left_more.x;
		y = obj_door_normal_left_more.y;
		
		if (!instance_place(bbox_left+8,y,obj_block_door))
		{
			blockdoorID = instance_create(bbox_left+8,y,obj_block_door);
		}
		
		with(obj_door_normal_left_more)
		{
			image_alpha = 0;
		}
	}
}


//bullet shit
if (instance_place(x,y,obj_bullet))
{
    if (global.beam_shield_available == 0)
	{
		bullet_hurtenemycode_noeffect()
	}
	else if (global.beam_shield_available == 1)
	{
		bullet_hurtenemycode(self)
	}
}

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (hp <= 0)
{
		//for getting killed
	var xmin = id.bbox_left;
	var xmax = id.bbox_right;
	var ymin = id.bbox_top;
	var ymax = id.bbox_bottom;
	
	with(blockdoorID)
	{
		instance_destroy(inst1)
		instance_destroy(inst2)
		instance_destroy(inst3)
		instance_destroy(inst4)
		instance_destroy(inst5)
		instance_destroy(inst6)
	}
	
	
	if (doorleft)
	{
		with(obj_door_normal_left)
		{
			image_alpha = 1;
		}	
	}
	else if (doorleftalt)
	{
		with(obj_door_normal_leftAlt)
		{
			image_alpha = 1;
		}	
	}
	else if (doorleftmore)
	{
		with(obj_door_normal_left_more)
		{
			image_alpha = 1;
		}	
	}
	else if (doorright)
	{
		with(obj_door_normal_right)
		{
			image_alpha = 1;
		}	
	}
	else if (doorrightalt)
	{
		with(obj_door_normal_rightAlt)
		{
			image_alpha = 1;
		}	
	}
	else if (doorrightmore)
	{
		with(obj_door_normal_right_more)
		{
			image_alpha = 1;
		}	
	}
	
	
	global.doors_redblocker[redblockerID] = 1;
	
	
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	

	instance_destroy();
}
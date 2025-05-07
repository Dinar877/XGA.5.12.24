/// @description Insert description here
// You can write your code in this editor

//using object's instance id
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
		sprite_index = spr_doorstopper_left_original;
		x = obj_door_normal_left.x;
		y = obj_door_normal_left.y;
		
		if (!instance_place(bbox_left+8,y,obj_block_door))
		{
			instance_create(bbox_left+8,y,obj_block_door);
		}
		
		with(obj_door_normal_left)
		{
			image_alpha = 0;
		}
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_left_original;
		x = obj_door_normal_leftAlt.x;
		y = obj_door_normal_leftAlt.y;
		
		if (!instance_place(bbox_left+8,y,obj_block_door))
		{
			instance_create(bbox_left+8,y,obj_block_door);
		}
		
		with(obj_door_normal_leftAlt)
		{
			image_alpha = 0;
		}
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_right_original;
		x = obj_door_normal_right.x;
		y = obj_door_normal_right.y;
		
		if (!instance_place(bbox_right-8,y,obj_block_door))
		{
			instance_create(bbox_right-8,y,obj_block_door);
		}
		
		with(obj_door_normal_right)
		{
			image_alpha = 0;
		}
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_right_original;
		x = obj_door_normal_rightAlt.x;
		y = obj_door_normal_rightAlt.y;
		
		if (!instance_place(bbox_right-8,y,obj_block_door))
		{
			instance_create(bbox_right-8,y,obj_block_door);
		}
		
		with(obj_door_normal_rightAlt)
		{
			image_alpha = 0;
		}
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_right_original;
		x = obj_door_normal_right_more.x;
		y = obj_door_normal_right_more.y;
		
		if (!instance_place(bbox_right-8,y,obj_block_door))
		{
			instance_create(bbox_right-8,y,obj_block_door);
		}
		
		with(obj_door_normal_right_more)
		{
			image_alpha = 0;
		}
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_left_original;
		x = obj_door_normal_left_more.x;
		y = obj_door_normal_left_more.y;
		
		if (!instance_place(bbox_left+8,y,obj_block_door))
		{
			instance_create(bbox_left+8,y,obj_block_door);
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
    bullet_hurtenemycode_noeffect()
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
	
	
	if (sprite_index = spr_doorstopper_left_original)
	{
		if (instance_place(id.x-6,id.y,obj_block2_door))
		{
			with(obj_block2_door)
			{
				if (instance_place(x+10,y,other))
				{
					instance_destroy()
				}
			}
		}
		
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_left, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		
		with(obj_blockerdoor_piece)
		{
			direction1 = -1	
			door_type = 4
		}
	}
	else if (sprite_index = spr_doorstopper_right_original)
	{
		if (instance_place(id.x+16,id.y,obj_block2_door))
		{
			with(obj_block2_door)
			{
				if (instance_place(x-20,y,other))
				{
					instance_destroy()
				}
			}
		}
		
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		instance_create_layer(id.bbox_right, random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_blockerdoor_piece);
		
		with(obj_blockerdoor_piece)
		{
			direction1 = 1	
			door_type = 4
		}
	}
	
	global.doors_redblocker[redblockerID] = 1;
	
	
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	

	instance_destroy();
}
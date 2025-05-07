/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0)// or (global.corrupted > 0)
{
	//doors
	if (doorleft)
	{
		doorleft.image_alpha = 1;	
	}

	if (doorleftalt)
	{
		doorleftalt.image_alpha = 1;	
	}
	
	if (doorleftmore)
	{
		doorleftmore.image_alpha = 1;	
	}

	if (doorright)
	{
		doorright.image_alpha = 1;
	}

	if (doorrightalt)
	{
		doorrightalt.image_alpha = 1;	
	}
	instance_destroy();
}

if (global.doors_redblocker[redblockerID] <= 0) && (go == 0)
{
	go = 1
	image_alpha = 1;
	if (doorleft)
	{
		sprite_index = spr_doorstopper_nopower_left;
		x = obj_door_normal_left.x;
		y = obj_door_normal_left.y;
		with(obj_door_normal_left)
		{
			image_alpha = 0;
		}
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_nopower_left;
		x = obj_door_normal_leftAlt.x;
		y = obj_door_normal_leftAlt.y;
		with(obj_door_normal_leftAlt)
		{
			image_alpha = 0;
		}
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_nopower_right;
		x = obj_door_normal_right.x;
		y = obj_door_normal_right.y;
		with(obj_door_normal_right)
		{
			image_alpha = 0;
		}
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_nopower_right;
		x = obj_door_normal_rightAlt.x;
		y = obj_door_normal_rightAlt.y;
		with(obj_door_normal_rightAlt)
		{
			image_alpha = 0;
		}
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_nopower_right;
		x = obj_door_normal_right_more.x;
		y = obj_door_normal_right_more.y;
		with(obj_door_normal_right_more)
		{
			image_alpha = 0;
		}
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_nopower_left;
		x = obj_door_normal_left_more.x;
		y = obj_door_normal_left_more.y;
		with(obj_door_normal_left_more)
		{
			image_alpha = 0;
		}
	}
}

if (image_index >= image_number-1) && (sprite_index = spr_doorstopper_nopower_left)
{
	sprite_index = spr_doorstopper_nopower_left;	
}
else if (image_index >= image_number-1) && (sprite_index = spr_doorstopper_nopower_right)
{
	sprite_index = spr_doorstopper_nopower_right;	
}


if (instance_place(x,y,obj_bullet))
{
    with((instance_place(x,y,obj_bullet)))
    {
        audio_stop_sound(snd_beam1_noeffect)
		audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume)
		hspd = 0;
        vspd = 0;
		sprite_index = spr_bullet_hit_noeffect;
        started1 = 1;	
        enemy_contact = 1;
    }
}

if (activated > 0)
{
		//for getting killed
	var xmin = bbox_left;
	var xmax = bbox_left+10;
	var ymin = bbox_top;
	var ymax = bbox_bottom;
	global.doors_redblocker[redblockerID] = 1;

	//doors
	if (doorleft)
	{
		doorleft.image_alpha = 1;
		instance_create_layer(x-14,y-17,layer_get_id("Inst_doors"), obj_redblocker_broken1_left);
		instance_create_layer(x-15,y-8,layer_get_id("Inst_doors"), obj_redblocker_broken2_left);
		instance_create_layer(x-16,y+2,layer_get_id("Inst_doors"), obj_redblocker_broken3_left);	
	}

	if (doorleftalt)
	{
		doorleftalt.image_alpha = 1;
		instance_create_layer(x-14,y-17,layer_get_id("Inst_doors"), obj_redblocker_broken1_left);
		instance_create_layer(x-15,y-8,layer_get_id("Inst_doors"), obj_redblocker_broken2_left);
		instance_create_layer(x-16,y+2,layer_get_id("Inst_doors"), obj_redblocker_broken3_left);	
	}
	
	if (doorleftmore)
	{
		doorleftmore.image_alpha = 1;
		instance_create_layer(x-14,y-17,layer_get_id("Inst_doors"), obj_redblocker_broken1_left);
		instance_create_layer(x-15,y-8,layer_get_id("Inst_doors"), obj_redblocker_broken2_left);
		instance_create_layer(x-16,y+2,layer_get_id("Inst_doors"), obj_redblocker_broken3_left);	
	}

	if (doorright)
	{
		doorright.image_alpha = 1;
		instance_create_layer(x-14,y-17,layer_get_id("Inst_doors"), obj_redblocker_broken1_right);
		instance_create_layer(x-15,y-8,layer_get_id("Inst_doors"), obj_redblocker_broken2_right1);
		instance_create_layer(x-16,y+2,layer_get_id("Inst_doors"), obj_redblocker_broken3_right);
	}

	if (doorrightalt)
	{
		doorrightalt.image_alpha = 1;
		instance_create_layer(x-14,y-17,layer_get_id("Inst_doors"), obj_redblocker_broken1_right);
		instance_create_layer(x-15,y-8,layer_get_id("Inst_doors"), obj_redblocker_broken2_right1);
		instance_create_layer(x-16,y+2,layer_get_id("Inst_doors"), obj_redblocker_broken3_right);	
	}
	
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_doors"), obj_explosion_random);
	

	instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor

if (global.doors_redblocker[redblockerID] > 0)
{
	instance_destroy();
	exit;
}
else if (global.doors_redblocker[redblockerID] <= 0) && (activated == 0)
{
	image_alpha = 1;
	activated = 1;
	if (doorleft)
	{
		sprite_index = spr_doorstopper_skullleft;
		x = obj_door_normal_left.x;
		y = obj_door_normal_left.y;
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_skullleft;
		x = obj_door_normal_leftAlt.x;
		y = obj_door_normal_leftAlt.y;
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_skullright;
		x = obj_door_normal_right.x;
		y = obj_door_normal_right.y;
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_skullright;
		x = obj_door_normal_rightAlt.x;
		y = obj_door_normal_rightAlt.y;
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_skullright;
		x = obj_door_normal_right_more.x;
		y = obj_door_normal_right_more.y;
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_skullleft;
		x = obj_door_normal_left_more.x;
		y = obj_door_normal_left_more.y;
	}
}


//bullet shit
if (instance_place(x,y,obj_bullet))
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    bullet_hurtenemycode(self)
}

if (hp <= 0)
{
		//for getting killed
	var xmin = bbox_left;
	var xmax = bbox_right;
	var ymin = bbox_top;
	var ymax = bbox_bottom;
	global.doors_redblocker[redblockerID] = 1;

	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_scrn"), obj_skulldoor_piece);
	
	if (sprite_index = spr_doorstopper_skullleft)
	{
		with(obj_skulldoor_piece)
		{
			direction1 = -1
			direction2 = round(random_range(1,-1))
		}
	}
	else if (sprite_index = spr_doorstopper_skullright)
	{
		with(obj_skulldoor_piece)
		{
			direction1 = 1
			direction2 = round(random_range(1,-1))
		}
	}
	
	var snd = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
	audio_sound_set_track_position(snd,1.0)
	

	instance_destroy();
}
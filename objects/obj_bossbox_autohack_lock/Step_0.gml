/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] = 1)
{
	sprite_index = spr_autohack_door_open	
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	
	image_speed = 0
	image_index = image_number-1
	exit;
}

if (instance_place(id.x,id.y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (place_meeting(id.x,id.y,obj_shockwave_energycircle)) && (image_speed != 0)
{
	sprite_index = spr_autohack_door_opening
}


if (sprite_index = spr_autohack_door_opening) && (dontgo = 0) && (global.bossblockers[bossblockers.box] > 0)
{
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	
	image_speed = 0
	image_index = image_number-1
	open = 1
	global.doors_redblocker[redblockerID] = 1;
}

if (global.boss_warning = 1) && (sprite_index = spr_autohack_door_open)
{
	image_speed = -1
	sprite_index = spr_autohack_door_opening
	image_index = image_number-1
	
	
	inst1 = instance_create(x+8,y+8,obj_block2);
	inst2 = instance_create(x+8,y+24,obj_block2);
	inst3 = instance_create(x+8,y+40,obj_block2);
	inst4 = instance_create(x+8,y+56,obj_block2);
	inst5 = instance_create(x+8,y+72,obj_block2);
}
else if (global.boss_warning = 1) && (sprite_index = spr_autohack_door_opening) && (image_index <= 0) && (image_speed = -1)
{
	image_speed = 0
	open = 0
	dontgo = 0
}


/// @description Insert description here
// You can write your code in this editor

//using object's instance id
RedblockerID_check()


/*
//for new RedblockerID's
if (redblockerID <= 0)
{
	TileHazard_ID()	
	
	with(inst1)
	{
		redblockerID = other.redblockerID
	}
	with(inst2)
	{
		redblockerID = other.redblockerID
	}
	with(inst3)
	{
		redblockerID = other.redblockerID
	}
	with(inst4)
	{
		redblockerID = other.redblockerID
	}
	with(inst5)
	{
		redblockerID = other.redblockerID
	}
}
*/


if (global.doors_redblocker[redblockerID] = 1) && (sprite_index != spr_autohack_door_opening)
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

if (place_meeting(id.x,id.y,obj_shockwave_energycircle)) && (image_speed != 0) && (sprite_index != spr_autohack_door_opening)
{
	image_index = 0
	sprite_index = spr_autohack_door_opening
	global.doors_redblocker[redblockerID] = 1;
	var snd1 = audio_play_sound(snd_gate_opening,1000,false,global.sfx_volume)
}


if (sprite_index = spr_autohack_door_opening) && (image_index >= image_number-1)
{
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	
	image_speed = 0
	image_index = image_number-1
	open = 1
}
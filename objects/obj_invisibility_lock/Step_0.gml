/// @description Insert description here
// You can write your code in this edito
/*
if (redblockerID <= 0)
{
	RedblockerID()	
	
	with(inst1_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst2_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst3_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst4_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst5_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst6_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst7_invis)
	{
		redblockerID = other.redblockerID
	}
	with(inst8_invis)
	{
		redblockerID = other.redblockerID
	}
}
*/


if (sprite_index = spr_invisibility_lock_open) && (instance_exists(inst1_invis))
{
	instance_deactivate_object(inst1_invis)	
	instance_deactivate_object(inst2_invis)	
	instance_deactivate_object(inst3_invis)	
	instance_deactivate_object(inst4_invis)	
	instance_deactivate_object(inst5_invis)	
	instance_deactivate_object(inst6_invis)
	instance_deactivate_object(inst7_invis)
	instance_deactivate_object(inst8_invis)
}

if (sprite_index = spr_invisibility_lock_shutting) && (!instance_exists(inst1_invis))
{
	instance_activate_object(inst1_invis)	
	instance_activate_object(inst2_invis)	
	instance_activate_object(inst3_invis)	
	instance_activate_object(inst4_invis)	
	instance_activate_object(inst5_invis)
	instance_activate_object(inst6_invis)
	instance_activate_object(inst7_invis)
	instance_activate_object(inst8_invis)
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (sprite_index = spr_invisibility_lock_shutting) && (image_index >= image_number-1)
{
	sprite_index = spr_invisibility_lock_shut
}
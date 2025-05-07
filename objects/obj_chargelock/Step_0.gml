/// @description Insert description here
// You can write your code in this editor

//stays open even after player leaves room and comes back
if (sprite_index = spr_timerlock_idle)
&& ((redblockerID > 0) && (global.doors_redblocker[redblockerID] > 0) or (open = 1))
{
		with(inst1)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst2)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst3)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst4)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst5)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst6)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst7)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst8)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		
		instance_destroy()
		exit
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

if (sprite_index = spr_corelock_opening) && (image_index >= image_number-1)
{
		instance_deactivate_object(inst1)	
		instance_deactivate_object(inst2)	
		instance_deactivate_object(inst3)	
		instance_deactivate_object(inst4)	
		instance_deactivate_object(inst5)
		instance_deactivate_object(inst6)	
		instance_deactivate_object(inst7)	
		instance_deactivate_object(inst8)
	
		image_speed = 0
		image_index = image_number-1
}
else if (sprite_index = spr_corelock_open_fully)
&& (redblockerID > 0)
&& (global.doors_redblocker[redblockerID] > 0)
{
		with(inst1)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst2)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst3)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst4)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst5)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst6)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst7)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		with(inst8)
		{
			redblockerID = other.redblockerID
			instance_destroy()
		}
		
		instance_destroy()
		exit
}

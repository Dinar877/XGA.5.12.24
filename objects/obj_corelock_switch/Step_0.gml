/// @description Insert description here
// You can write your code in this editor
//for new RedblockerID's

if (redblockerID <= 0)
{
	RedblockerID()
}

if (global.doors_redblocker[redblockerID] > 0) && (obj_corelock > -1) && (on <= 0)
{
	on = 1	
	sprite_index = spr_switch_on
	with(obj_corelock)
		{
			sprite_index = spr_corelock_opening
			image_speed = 0
			image_index = image_number-1
			
			instance_deactivate_object(inst1)	
			instance_deactivate_object(inst2)	
			instance_deactivate_object(inst3)	
			instance_deactivate_object(inst4)	
			instance_deactivate_object(inst5)
		}
}

if (instance_place(id.x,id.y,obj_bullet))
{
    if (on <= 0)
	{
		on = 1
		sprite_index = spr_switch_on
		FadeNow = 1.0
		with(obj_corelock)
		{
			sprite_index = spr_corelock_opening
			image_index = 0
		}
	}
	bullet_hurtenemycode_noeffect()
}

if (FadeNow > 0)
{ 
	FadeNow -= 0.01; 
}
else if (FadeNow <= 0) && (on <= 0) 
{
	FadeNow = 0.5;
}
/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0)
{
	instance_destroy();
}
else if (instance_exists(obj_boss_turtle_sprites)) && (image_index != image_number-1) && (global.boss_warning > 0)
{
	image_speed = 1;
	instance_create(x-4,y-31,obj_block2)
	instance_create(x-4,y-15,obj_block2)
	instance_create(x-4,y+1,obj_block2)
	instance_create(x-4,y+17,obj_block2)
	instance_create(x-4,y+35,obj_block2)
}

if (image_speed != 0)  && (image_index >= image_number-1)
{
	image_speed = 0;
}


//bullet shit
if (!instance_exists(obj_boss_turtle_sprites)) && (image_speed <= 0)
{
	if (image_index >= 1)
	{
			image_speed = -1;
	}	
	else if (image_index <= 0)
	{
			image_speed = 0;
			if (instance_place(x,y,obj_block2))
			{
				with(obj_block2)
				{
					if (place_meeting(x,y,ob_doorbarrierP_boss))
					{
					instance_destroy()	
					}
				}
			}
	}	
}
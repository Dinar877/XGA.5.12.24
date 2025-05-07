/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0)
{
	instance_destroy();
}
else if (global.boss_battle_turtle = 0) && (image_index != image_number-1)
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
if (global.boss_battle_turtle = 1)
{
	image_speed = -1;
	if (image_index <= 0)
	{
			image_speed = 0;
			if (instance_place(x,y,obj_block2))
			{
				with(obj_block2)
				{
					if (place_meeting(x,y,ob_doorbarrierP))
					{
					instance_destroy()	
					}
				}
			}
	}	
}
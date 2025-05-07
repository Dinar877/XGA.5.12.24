/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0)
{
	instance_destroy();
}
else if (!collision_circle(x,y,70,obj_player,false,true)) && (image_index != image_number-1)
{
	image_speed = 1;
	instance_create(x,y-31,obj_block2)
	instance_create(x,y-15,obj_block2)
	instance_create(x,y+1,obj_block2)
	instance_create(x,y+17,obj_block2)
	instance_create(x,y+35,obj_block2)
}

if (image_speed != 0)  && (image_index >= image_number-1)
{
	image_speed = 0;
}


//bullet shit
if (instance_place(x,y,obj_bullet)) && (global.beam_spread_available == 1)
{
  with((instance_place(x,y,obj_bullet)))
    {
        enemy_contact = 1;
		shootlimit = 0;
        hspd = 0;
        vspd = 0;
        
		if (image_index >= 1)
		{
		if (global.beam_spread_available == 1) && (charge = 0)
		    {
				with(instance_place(x,y,ob_doorbarrierP_leftblocker))
				{
					hp -= 2;
					enemy_hurt = 1;
				}		    
			}
			else if (global.beam_spread_available == 1) && (charge = 1)
		    {
				with(instance_place(x,y,ob_doorbarrierP_leftblocker))
				{
					hp -= 5;
					enemy_hurt = 1;
				}		    
			}
		}
    }
}
else if (instance_place(x,y,obj_bullet)) && (global.beam_spread_available == 0)
{
   with((instance_place(x,y,obj_bullet)))
    {
        enemy_contact = 1;
        shootlimit = 0;
        hspd = 0;
        vspd = 0;
		
    }
}

if (hp <= 0)
{
		//for getting killed
		if (instance_place(x,y,obj_block2))
		{
			with(obj_block2)
			{
				if (place_meeting(x,y,ob_doorbarrierP_leftblocker))
				{
				instance_destroy()	
				}
			}
		}
	var xmin = id.bbox_left;
	var xmax = id.bbox_left+10;
	var ymin = id.bbox_top;
	var ymax = id.bbox_bottom;
	global.doors_redblocker[redblockerID] = 1;	
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	instance_destroy()
}
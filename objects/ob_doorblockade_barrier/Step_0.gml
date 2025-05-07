/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0)
{
	instance_destroy();
}


if (hp <= 0)
{
		//for getting killed
		if (instance_place(x,y,obj_block2))
		{
			with(obj_block2)
			{
				if (place_meeting(x,y,ob_doorblockade_barrier))
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
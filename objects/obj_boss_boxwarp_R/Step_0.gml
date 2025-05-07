/// @description Insert description here
// You can write your code in this editor
if (instance_place(x,y,obj_boss_Greybox_outside))
{
	if (instance_exists(obj_boss_boxwarp_L))
	{
		with((instance_place(x,y,obj_boss_Greybox_outside)))
		{
			x = obj_boss_boxwarp_L.x	
		}
	}
}
else if (instance_place(x,y,obj_boss_Greenbox))
{
	if (instance_exists(obj_boss_boxwarp_L))
	{
		with((instance_place(x,y,obj_boss_Greenbox)))
		{
			x = obj_boss_boxwarp_L.x	
		}
	}
}
else if (instance_place(x,y,obj_boss_Obox))
{
	if (instance_exists(obj_boss_boxwarp_L))
	{
		with((instance_place(x,y,obj_boss_Obox)))
		{
			x = obj_boss_boxwarp_L.x	
		}
	}
}

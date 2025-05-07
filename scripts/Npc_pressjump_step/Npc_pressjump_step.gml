// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Npc_pressjump_step(){
	if (place_meeting(x,y,obj_player)) && (variable_instance_exists(self, "pressjumpID"))
	{
		if (pressjumpID > -1)
		{
			if (instance_exists(pressjumpID) > -1)
			{
				if (pressjumpID.image_alpha < 1)
				{
					pressjumpID.image_alpha += (1/60);	
				}
				else pressjumpID.image_alpha = 1;
			}
		}
	}
	else if (!place_meeting(x,y,obj_player)) && (variable_instance_exists(self, "pressjumpID"))
	{
		if (pressjumpID > -1)
		{
			if (instance_exists(pressjumpID) > -1)
			{
				if (pressjumpID.image_alpha > 0)
				{
					pressjumpID.image_alpha -= (1/60);	
				}
				else pressjumpID.image_alpha = 0;
			}
		}
	}
}
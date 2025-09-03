/// @description Insert description here
// You can write your code in this editor
x = obj_camera.x
y = obj_camera.y

if (image_alpha > 0)
{
	image_alpha-= 0.015
}
else image_alpha = 0.5

if (global.room_transition_prep = 1)
{
	global.nuclearblast = 0
	global.screen_shake = 0
	instance_destroy()
}


//deplete enemy hp
if (instance_place(x,y,obj_link_enemies)) && (global.dead_begin = 0) && (global.dead = 0)
{
	with(obj_link_enemies)
	{
		if (place_meeting(x,y,obj_nuclearblast_scrneffect))
		{
			if (variable_instance_exists(self,"hp")) && (variable_instance_exists(self,"enemy_hurt"))
			{
				if (variable_instance_exists(self,"warning")) //bosses
				{
					if (warning == true)
					{
						if (global.nuclearblast_state == 0)
						{
							hp -= (1/60) * 20
						}
						else if (global.nuclearblast_state == 1)
						{
							hp -= (1/60) * 40
						}
			
						enemy_hurt = 0.9
					}
				}
				else if (!variable_instance_exists(self,"warning")) //regular enemies
				{
					if (global.nuclearblast_state == 0)
					{
						hp -= (1/60) * 20
					}
					else if (global.nuclearblast_state == 1)
					{
						hp -= (1/60) * 40
					}
			
					enemy_hurt = 0.9
				}
			}
		}
	}
}


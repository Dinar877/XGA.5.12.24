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
	with(instance_place(x,y,obj_link_enemies))
	{
		if (variable_instance_exists(obj_link_enemies,"hp")) && (variable_instance_exists(obj_link_enemies,"enemy_hurt"))
		{
			if (global.nuclearblast_state == 0)
			{
				hp -= (1/60)*2
			}
			else if (global.nuclearblast_state == 1)
			{
				hp -= (1/60)*4
			}
			
			enemy_hurt = 0.9
		}
	}
}


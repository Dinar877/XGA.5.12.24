/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1) 
{
	image_speed = 0
}

if (image_alpha <= 0)
{
	instance_destroy()	
}
else image_alpha -= 0.15;

if (instance_place(x,y,obj_enemy_eyebot_spread_bullet))
{
	with(instance_place(x,y,obj_enemy_eyebot_spread_bullet))
	{
		instance_destroy()
	}
}

if (instance_place(x,y,obj_enemy_treespike_bullet))
{
	with(instance_place(x,y,obj_enemy_treespike_bullet))
	{
		instance_destroy()
	}
}

if (instance_place(x,y,obj_enemy_butterfly_spore))
{
	with(instance_place(x,y,obj_enemy_butterfly_spore))
	{
		instance_destroy()
	}
}

if (instance_place(x,y,obj_enemy_petalblade_bullet))
{
	with(instance_place(x,y,obj_enemy_petalblade_bullet))
	{
		instance_destroy()
	}
}


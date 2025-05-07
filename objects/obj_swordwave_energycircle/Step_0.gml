/// @description Insert description here
// You can write your code in this editor

//if no player then delete
if (!instance_exists(obj_player))
{
	instance_destroy();
	exit;
}
else if (instance_exists(obj_player)) //if player not jump sword spinning then delete, or if upgrade not active then delete
{
	if (obj_player.state != Sword_jump) or (global.sword_wave_available = 0)
	{
		instance_destroy();
		exit;
	}
	
	//set correct sprite index
	if (global.suit_pure = 1) && (global.suit_shock = 0)
	{
		sprite_index = spr_sword_wave_dash;
	}
	else if (global.suit_shock = 1)
	{
		sprite_index = spr_sword_wave_volt;
	}
	else sprite_index = spr_sword_wave;
}

//if sword jumping and x wave available
if (obj_player.state = Sword_jump) && (instance_place(x,y,obj_link_enemies)) //normal enemies
&& (global.sword_wave_available = 1)
{
	with(instance_place(x,y,obj_link_enemies))
	{
		if (variable_instance_exists(obj_link_enemies,"hp")) && (variable_instance_exists(obj_link_enemies,"enemy_hurt"))
		{
			hp -= 0.1
			enemy_hurt = 0.9
		}
	}
}
else if (obj_player.state = Sword_jump) && (instance_place(x,y,obj_link_enemies_robots)) //robots
&& (global.sword_wave_available = 1)
{
	with(instance_place(x,y,obj_link_enemies_robots))
	{
		if (variable_instance_exists(obj_link_enemies_robots,"hp")) && (variable_instance_exists(obj_link_enemies_robots,"enemy_hurt"))
		{
			hp -= 0.1
			enemy_hurt = 0.9
		}	
	}
}

//follow player
x = obj_player.x;
y = obj_player.y;


image_alpha -= 0.1;

image_xscale += 0.1;
image_yscale += 0.1;


if (image_alpha <= 0)
{
	instance_destroy()	
	exit;
}
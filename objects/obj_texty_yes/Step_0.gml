/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables)

if (alpha < 1)
{
	alpha += spd/10;
}
else alpha = 1;

if (selected > 0)
{
	if FadeNow > 0
	{ 
	FadeNow -= 0.01; 
	}
	else if FadeNow <= 0
	{
	FadeNow = 0.8;
	}
}
else FadeNow = 0;

if (selected) && (right_key_pressed)
{
	selected = 0;	
	with(obj_texty_no)
	{
		selected = 1;	
	}
}

if (selected) && (jump_pressed)
{
	instance_destroy();
	with(obj_scrnDark_navigational)
	{
		instance_destroy()	
	}
	with(obj_scrnDark_navigational2)
	{
		image_index = 0;
		sprite_index = spr_bg_navigational2_rev;
		image_speed = 1;
	}
	with(obj_texty_yes)
	{
		instance_destroy()	
	}
	with(obj_texty)
	{
		instance_destroy()	
	}
	with(obj_texty_heading)
	{
		instance_destroy()
	}
	with(obj_texty_no)
	{
		instance_destroy()	
	}
	with(obj_text_spawning)
	{
		instance_destroy()	
	}
	with(obj_navigation_standbyeffect)
	{
		instance_destroy()	
	}
	global.navigation = 0;
	global.navigation_effect = 0;
	instance_activate_object(obj_link_healthUI)
	instance_activate_object(obj_link_map)	
}
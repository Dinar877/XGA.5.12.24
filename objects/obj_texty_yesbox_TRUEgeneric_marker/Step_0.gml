/// @description Insert description here
// You can write your code in this editor
if (alpha < 1)
{
	alpha += spd/10;
}
else alpha = 1;

stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,time+message_pos+time2+1)
	}
}
else time2 = 0;

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}


script_execute(Gamepad_variables)


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
	with(obj_texty_nobox_TRUEgeneric_marker)
	{
		selected = 1;	
	}
}

if (selected) && (jump_pressed)
{
	with(obj_texty_nobox_TRUEgeneric_marker)
	{
		instance_destroy()	
	}
	with(obj_texty_TRUEgeneric_nonmarker)
	{
		instance_destroy()	
	}
	with(obj_scrnDark_navigational)
	{
		instance_destroy()	
	}
	with(obj_scrnDark_navigational2_test1)
	{
		image_index = 0;
		sprite_index = spr_bg_navigational2_rev;
		image_speed = 1;
	}
	with(obj_text_spawning_any)
	{
		instance_destroy()	
	}
	with(obj_texty_heading)
	{
		instance_destroy()
	}
	with(obj_navigation_standbyeffect)
	{
		instance_destroy()	
	}
	instance_destroy();
	global.navigation = 0;
	instance_activate_object(obj_link_healthUI)
	instance_activate_object(obj_link_map)
}


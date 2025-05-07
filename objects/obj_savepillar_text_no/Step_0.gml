/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (image_alpha < 1)
{
	image_alpha += 0.025;
}
if (image_alpha + 0.05>= 1) && (image_alpha < 1)
{
	image_alpha += 0.05;
}

if (image_alpha == 1) && (left_key_pressed)
{
	selected = 0;
	FadeNow = 0;
	with(obj_savepillar_text_yes)
	{
		selected = 1;	
	}
}

if (selected = 1)
{
	if (FadeNow < 0.6)
	{
		FadeNow += 0.02;	
	}
	else if (FadeNow >= 0.6)
	{
		FadeNow = 0.0;	
	}
}

if (selected = 1) && (jump_pressed)
{
	global.saving = 0;
	instance_activate_all();
	with(obj_savepillar_text_doyouwanttosave)
		{
			instance_destroy();	
		}
	with(obj_savepillar_text_yes)
		{
			instance_destroy();	
		}
	with(obj_savepillar_textunderside)
		{
			instance_destroy();	
		}
	with(obj_scrn_roomtransition)
		{
			instance_destroy();
		}
}

if (!instance_exists(obj_scrn_roomtransition))
	{
		with(obj_savepillar_separated1)
		{
			dontsave = 1;	
		}
		with(obj_savepillar_standbyeffect)
		{
			savebegin_timer = 0;
			ready = 0;
		}
		instance_destroy()
	}
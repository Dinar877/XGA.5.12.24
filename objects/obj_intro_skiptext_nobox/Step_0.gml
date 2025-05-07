/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

if (delay < 1) && (active > 0)
{
    delay += 0.05;
}

if (active > 0)
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

if (left_key_pressed) && (active = 1) && (delay = 1)
{
	active  = 0
	with(obj_intro_skiptext_yesbox)
	{
		active = 1	
	}
}

if (jump_pressed) && (active = 1) && (delay = 1)
{
	obj_text_spawning_trueintro_opening.skiptext = 0
	
	if (instance_exists(obj_texty_intro_xga))
	{
		with(obj_texty_intro_xga)
		{
			if (floor(time)+time2 > 46) && (time+time2+message_pos < text_length)
			{
				spd = 0.5	
			}
		}
	}
	
	if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			if (floor(time)+time2 > 46) && (time+time2+message_pos < text_length)
			{
				spd = 0.5	
			}
		}
	}
	
	with(obj_intro_skiptext_yesbox)
	{
		instance_destroy()	
	}
	
	instance_destroy()
}
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
	with(obj_texty_nobox)
	{
		selected = 1;	
	}
}

if (selected) && (jump_pressed)
{
	with(obj_texty_nobox_generic)
	{
		instance_destroy()	
	}
	instance_destroy();
	global.upgrade_process_data_active = 1;
}


/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

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


if (death1 == 0)
{
	if (alpha < 1)
	{
		alpha += 0.025;
	}
	if (alpha + 0.05>= 1) && (alpha < 1)
	{
		alpha += 0.05;
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

if (alpha == 1) && (down_key_pressed)
{
	selected = 0;
	FadeNow = 0;
	with(obj_setting_text_options)
	{
		selected = 1;	
	}
}

if (death2) && (alpha > 0)
{
	alpha -= 0.05;
}
else if (death2) && (alpha <= 0)
{
	instance_destroy()
}

if (death1) && (alpha > 0)
{
	alpha -= 0.05;
}
else if (death1) && (alpha <= 0)
{
	instance_destroy()
}

if (selected = 1) && (jump_pressed)
{	
	death1 = 1
	with(obj_setting_text)
	{
		death1 = 1;	
	}
	with(obj_setting_text_options)
	{
		death1 = 1;	
	}
}
/// @description Insert description here
// You can write your code in this editor
Gamepad_variables();

if (alpha < 1) && (death1 <= 0)
{
	alpha += spd/10;
}
else if (alpha >= 1) && (death1 <= 0)
{
	alpha = 1;
}

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


//delay
if (delay < 1)
{
	delay += 0.05	
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

if (alpha == 1) && (up_key_pressed) && (selected > 0)
&& (delay >= 1)
{
	selected = 0;
	FadeNow = 0;
	delay = 0
	
	with(obj_NEWsav_text_yes)
	{
		selected = 1;	
		delay = 0
	}
	if (instance_exists(obj_NEWsav_text_travel))
	{
		with(obj_NEWsav_text_travel)
		{
			selected = 0;	
			delay = 0
		}
	}
}

/*
if (alpha == 1) && (down_key_pressed) && (selected > 0)
&& (delay >= 1)
{
	selected = 0;
	FadeNow = 0;
	delay = 0
	
	with(obj_NEWsav_text_travel)
	{
		selected = 1;	
		delay = 0
	}
	with(obj_NEWsav_text_yes)
	{
		selected = 0;	
		delay = 0
	}
}
*/

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

if (death1) && (alpha > 0)
{
	alpha -= 0.05;
}

if (selected = 1) && (jump_pressed)
{
	audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
	
	global.saving = 0;
	draw_set_alpha(1)
	instance_activate_all();
	with(obj_NEWsav_text_yes)
		{
			instance_destroy();
		}
	if (instance_exists(obj_NEWsav_text_travel))
		{
			with(obj_NEWsav_text_travel)
			{
				instance_destroy();
			}
		}
	with(obj_NEWsav_text)
		{
			instance_destroy();
		}
	with(obj_scrn_roomtransition)
		{
			instance_destroy();
		}
	with(obj_NEWsav_standbyeffect)
	{
		stopnow = 1
	}
	instance_destroy()
}
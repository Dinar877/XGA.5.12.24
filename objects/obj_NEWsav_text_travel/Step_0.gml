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
	
	with(obj_NEWsav_text_no)
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
	draw_set_alpha(1)
	
	//for making maptiles appear
	global.navigation = 1
	
	instance_create_layer((__view_get( e__VW.XView, 0 )),(__view_get( e__VW.YView, 0 ))+10,layer_get_id("Inst_healthui_mapborder"),obj_NEWsave_text_underside)
	
	with(obj_NEWsave_text_underside)
	{
		image_speed = 1
	}
	
	//deactivate
	with(obj_NEWsav_text_yes)
		{
			instance_deactivate_object(obj_NEWsav_text_yes)
		}
	with(obj_NEWsav_text_no)
		{
			instance_deactivate_object(obj_NEWsav_text_no)
		}
	with(obj_NEWsav_text)
		{
			instance_deactivate_object(obj_NEWsav_text)
		}
	with(obj_NEWsav_standbyeffect)
		{
			instance_deactivate_object(obj_NEWsav_standbyeffect)
		}
	
	instance_deactivate_object(obj_link_healthUI)
	instance_deactivate_object(obj_mapborder_underside)
	instance_deactivate_object(obj_mapborder)
	
	instance_activate_object(obj_camera)
	
	instance_deactivate_object(self)
}
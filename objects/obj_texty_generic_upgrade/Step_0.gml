/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

switch2 = 0

if (alpha < 1)
{
	alpha += spd/10;
}
else
{
	alpha = 1;
	
	if (string_positionX < floor(time)) && (!instance_exists(obj_text_spawning_arrow_upgrade_ender))
	&& (midpause <= 0) && (switch1 == 0)
	{
		audio_stop_sound(snd_typing)
		audio_play_sound(snd_typing,1000,false,global.sfx_volume)
		string_positionX = time	
	}
	else if (midpause > 0)
	{
		audio_stop_sound(snd_typing)
	}
}

stringy = string_char_at(text,floor(time)+message_pos)
stringy2 = string_char_at(text,floor(time)+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,floor(time)+message_pos+time2+1)
	}
}
else time2 = 0;

if ((string_char_at(text,floor(time)+message_pos-1) == ".") or (string_char_at(text,floor(time)+message_pos-1) == ",") or (string_char_at(text,floor(time)+message_pos-1) == "!"))
 && (floor(time)+message_pos+time2+1 < text_length) && (midpause <= 0)
{
	midpause = 1;
}
else midpause -= 0.1;


if (stringy == "\n") && (switch1 = 0)
 && (floor(time)+message_pos+time2+1 < text_length)
{
	string_positionY += 1;
}

if (((stringy == " ") && (time2 > 0) && (floor(time)+time2 > 46)) or (stringy == "\n")) && (switch1 = 0)
{
	strn = string_copy(text,time+message_pos,time2)
	strn_length = string_length(strn);
	switch1 = 1
	
	if (instance_number(obj_texty_generic_upgrade) < 3)
	{
		spd = 0;
		tex = instance_create_depth(x,y+12,id.depth-5,obj_texty_generic_upgrade);

		with(tex)
		{
			alpha = 1;
			text = other.text;
			message_pos += other.time + other.message_pos;
			spawnerID = other.spawnerID
			pauser = 0;
			string_positionY = 0;
			time = 0;
			text_length = string_length(text)
		}
	}
	else if (instance_number(obj_texty_generic_upgrade) >= 3) && (spd > 0)
	{
		pauser = 1;
		spd = 0;
		with(spawnerID)
		{
			time = (other.time+other.message_pos)
		}
	}
}

//if exhausted the entire string
if (floor(time)+message_pos+1 >= text_length) && (text_length > 15) && (isTitle == 0)
&& (!instance_exists(obj_text_spawning_arrow_upgrade_ender))
{
	if (instance_exists(obj_camera)) && (instance_exists(obj_scrn_roomtransition)) 
	{
		instance_create_depth(obj_camera.x+130, obj_camera.y+33, obj_scrn_roomtransition.depth-5, obj_text_spawning_arrow_upgrade_ender)
	}
}



//skip all text and end
if (enter_pressed) && (pauser_end == 0) && (!instance_exists(obj_upgrade_arrowend_enterpressed))
&& (room != rm_opening_x1) && (!instance_exists(obj_scrnDark_opening_1_intro))
{
	pauser_end = 1;	
	if (instance_exists(obj_text_spawning_arrow))
		{
			with(obj_text_spawning_arrow)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
		{
			with(obj_text_spawning_arrow_ender_any_trueend)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_preender_any))
		{
			with(obj_text_spawning_arrow_preender_any)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_preender_any_any))
		{
			with(obj_text_spawning_arrow_preender_any_any)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
		{
			with(obj_text_spawning_arrow_ender_any_trueend)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_upgrade_ender))
		{
			with(obj_text_spawning_arrow_upgrade_ender)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_upgradeprocess_text_underside))
		{
			with(obj_upgradeprocess_text_underside)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_scrn_roomtransition))
		{
			with(obj_scrn_roomtransition)
			{
				instance_destroy()
			}
		}
		
	instance_create_depth(x+278,y+5,id.depth-5,obj_upgrade_arrowend_enterpressed)
	if (instance_exists(obj_upgrade_arrowend_enterpressed))
	{	
		with(obj_upgrade_arrowend_enterpressed)
				{
					spawnerID = other.spawnerID
					textyID = other.object_index
				}
	}
	
	exit
		
}



	

if (instance_number(obj_texty_generic_upgrade) >= 3) && (room = rm_opening_x1) && (!instance_exists(obj_scrnDark_opening_1_intro))
{
	instance_create_layer(0,0,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_opening_1_intro)
}
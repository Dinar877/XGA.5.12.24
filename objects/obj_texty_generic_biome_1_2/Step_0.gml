/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

if (alpha < 1)
{
	alpha += spd/10;
}
else
{
	alpha = 1;
	
	if (string_positionX < floor(time)) && (!instance_exists(obj_text_spawning_arrow))
	{
		audio_stop_sound(snd_typing)
		audio_play_sound(snd_typing,1000,false,global.sfx_volume)
		string_positionX = time	
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

if (stringy == "\n") && (pauser == 0)
 && (floor(time)+message_pos+time2+1 < text_length)
{
	string_positionY += 1;
}

if (((floor(time) > 46)) or (stringy == "\n")) && (pauser == 0)
{
		strn = string_copy(text,time+message_pos,time2)
		strn_length = string_length(strn);
		pauser = 1;
	
		if (instance_number(obj_texty_generic_biome_1_2) <= 2)
		{
			spd = 0;
			tex = instance_create_depth(x,y+12,id.depth-5,obj_texty_generic_biome_1_2);

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
		else if (instance_number(obj_texty_generic_biome_1_2) > 2) && (spd > 0)
		{
			pauser = 1;
			spd = 0;
			with(spawnerID)
			{
				time = (other.time+other.message_pos)
			}
		}
}



if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (!instance_exists(obj_text_spawning_arrow_preender_any))
{
	instance_create_depth(x+278,y+5,id.depth-5,obj_text_spawning_arrow_preender_any)
	with(obj_text_spawning_arrow_preender_any)
	{
		spawnerID = other.spawnerID	
	}
}

if (enter_pressed) && (pauser_end == 0)
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
}
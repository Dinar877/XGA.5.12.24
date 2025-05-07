/// @description Insert description here
// You can write your code in this editor
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

if (stringy == " ") && (time2 > 0) && ((time+time2 > 46) && (string_positionY <= 0)) && (pauser == 0)
{
		strn = string_copy(text,time+message_pos,time2)
		strn_length = string_length(strn);
		string_positionY ++;
	
		if (instance_number(obj_texty_TRUEgeneric) <= 2)
		{
			spd = 0;
			tex = instance_create_depth(x,y+12,id.depth-5,obj_texty_TRUEgeneric);

			with(tex)
				{
					alpha = 1;
					text = other.text;
					message_pos += other.time + other.message_pos;
					pauser = 0;
					string_positionY = 0;
					time = 0;
					text_length = string_length(text)
				}
		}
		else if (instance_number(obj_texty_TRUEgeneric) > 2) && (spd > 0)
		{
			pauser_end = 1;
			spd = 0;
			with(obj_text_spawning_biome1_2)
			{
				time = other.time+other.message_pos
			}
		}
}


if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}



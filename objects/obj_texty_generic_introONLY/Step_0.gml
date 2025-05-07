  /// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

if (alpha < 1)
{
	alpha += spd;
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



if (time+message_pos+time2+1 < text_length)
{
	if (stringy == " ") && (time2 > 0) && ((time+time2 > 46) && (string_positionY <= 0)) && (pauser == 0)
	{
			strn = string_copy(text,time+message_pos,time2)
			strn_length = string_length(strn);
			string_positionY ++;
	
			if (instance_number(obj_texty_generic_introONLY	) <= 2)
			{
				spd = 0;
				tex = instance_create_depth(x,y+11,id.depth-5,obj_texty_generic_introONLY);

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
			else if (instance_number(obj_texty_generic_introONLY) > 2) && (spd > 0) 
			{
				pauser = 1;
				spd = 0;
				with(spawnerID)
				{
					time = (other.time+other.message_pos)
				}
				instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
				with(obj_text_spawning_arrow)
				{
					spawnerID = other.spawnerID
				}
			}
	}
	else if (stringy == ".") && (time2 > 0) && ((time+time2 > 46) && (string_positionY <= 0)) && (pauser == 0)
	{
			strn = string_copy(text,time+message_pos,time2)
			strn_length = string_length(strn);
			string_positionY ++;
	
			if (instance_number(obj_texty_generic_introONLY) <= 2)
			{
				spd = 0;
				tex = instance_create_depth(x,y+11,id.depth-5,obj_texty_generic_introONLY);

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
			else if (instance_number(obj_texty_generic_introONLY) > 2) && (spd > 0)
			{
				pauser = 1;
				spd = 0;
				with(spawnerID)
				{
					time = (other.time+other.message_pos)
				}
			
				instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
				with(obj_text_spawning_arrow)
				{
					spawnerID = other.spawnerID
				}
			}
	}
	else if ((time+time2 >= 46) && (string_positionY <= 0))
	{
			strn = string_copy(text,time+message_pos,time2)
			strn_length = string_length(strn);
			string_positionY ++;
	
			if (instance_number(obj_texty_generic_introONLY) <= 2)
			{
				spd = 0;
				tex = instance_create_depth(x,y+11,id.depth-5,obj_texty_generic_introONLY);

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
			else if (instance_number(obj_texty_generic_introONLY) > 2) && (spd > 0)
			{
				pauser = 1;
				spd = 0;
				with(spawnerID)
				{
					time = (other.time+other.message_pos)
				}
				instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
				with(obj_text_spawning_arrow)
				{
					spawnerID = other.spawnerID
				}
			}
	}
}
else if (time+message_pos+time2+1 >= text_length) && (timer < 1)
{
	timer += (1/180)
}
else if (time+message_pos+time2+1 >= text_length) && (timer >= 1)
{
	instance_destroy()
}

if (time >= 46) && (pauser == 0) && (stringy != " ")
{
	pauser = 1;
}


if (enter_pressed) && (pauser_end == 0)
{
	pauser_end = 1;	
}
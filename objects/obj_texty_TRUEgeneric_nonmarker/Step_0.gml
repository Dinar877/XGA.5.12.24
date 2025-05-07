/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

switch2 = 0

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

if ((string_char_at(text,floor(time)+message_pos-1) == ".") or (string_char_at(text,floor(time)+message_pos-1) == ",") or (string_char_at(text,floor(time)+message_pos-1) == "!"))
&& (midpause <= 0)
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
		strn = string_copy(text,floor(time)+message_pos,time2)
		strn_length = string_length(strn);
		switch1 = 1
		spd = 0;
		if (instance_number(obj_texty_TRUEgeneric_nonmarker) < 3)
		{
			if (string_positionY > 0)
			{
				tex = instance_create_depth(x,y+12+(12*string_positionY),id.depth-5,obj_texty_TRUEgeneric_nonmarker);
			}
			else if (string_positionY == 0)
			{
				tex = instance_create_depth(x,y+12,id.depth-5,obj_texty_TRUEgeneric_nonmarker);
			}

			with(tex)
				{
					alpha = 1;
					text = other.text;
					message_pos += other.time + other.message_pos;
					spawnerID = other.spawnerID
					pauser = 0;
					string_positionY = 0;
					if (string_char_at(text,floor(time)+message_pos) != "\n")
					{
						time = 0;
					}
					else if (string_char_at(text,floor(time)+message_pos) == "\n")
					{
						time = 1;
						string_positionY ++;
					}
					text_length = string_length(text)
				}
		}
		else if (instance_exists(obj_text_spawning_trueintro_opening)) && (instance_number(obj_texty_TRUEgeneric_nonmarker) >= 3) && (time < text_length)
		{
			with(spawnerID)
			{
				time = (other.time+other.message_pos)
			}
			instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
			with(obj_text_spawning_arrow)
			{
				textyID = other.object_index
				spawnerID = other.spawnerID
				message_pos = other.time
			}
		}
		else if (instance_exists(obj_text_spawning_endgame)) && (instance_number(obj_texty_TRUEgeneric_nonmarker) >= 3) && (time < text_length)
		{
			with(spawnerID)
			{
				time = (other.time+other.message_pos)
			}
			instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
			with(obj_text_spawning_arrow)
			{
				textyID = other.object_index
				spawnerID = other.spawnerID
				message_pos = other.time
			}
		}
}

//intro
if (instance_exists(obj_text_spawning_trueintro_opening)) && (!instance_exists(obj_text_spawning_arrow))
&& (time+time2+message_pos >= text_length) && (stringy == ".") && (instance_exists(obj_intro_cutsceneplayer))
 && (trueintro_moveonswitch = 0)
{			
				with(spawnerID)
				{
					time = (other.time+other.message_pos);
				}
				instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
				with(obj_text_spawning_arrow)
				{
					textyID = other.object_index;
					spawnerID = other.spawnerID;
					message_pos = other.time;
				}
}

//endgame
if (instance_exists(obj_text_spawning_endgame)) && (!instance_exists(obj_text_spawning_arrow))
&& (time+time2+message_pos >= text_length) && (stringy == ".")
 && (trueintro_moveonswitch = 0)
{			
				with(spawnerID)
				{
					time = (other.time+other.message_pos);
				}
				instance_create_depth(x+283,y+5,id.depth-5,obj_text_spawning_arrow)
				with(obj_text_spawning_arrow)
				{
					textyID = other.object_index;
					spawnerID = other.spawnerID;
					message_pos = other.time;
				}
}



if ((floor(time)+message_pos+time2  >= text_length) && (stringy == ".")) && (pauser_end_marker == 0)// && (midpause <= 0)
{
	pauser_end_marker = 1;
	spd = 0
}




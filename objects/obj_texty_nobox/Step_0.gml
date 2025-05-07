/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables)

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


if (delay < 1) && (selected > 0)
{
    delay += 0.05;
}

if (!left_key_pressed) && (!right_key_pressed) && (selectedpause = 1) && (selected = 1)
{
	selectedpause = 0	
}

if (gamepad_is_connected(correct_slot)) && (delay >= 1)
{
	with(obj_player)
		{
			jump = 0
			jump_pressed = 0
		}
	
	if (selected) && (left_key_pressed)
	{
		selected = 0;
		delay = 0
		with(obj_texty_yesbox)
		{
			selected = 1;	
		}
	}
	else if (selected) && (right_key_pressed) && (instance_exists(obj_texty_exitbox))
	{
		selected = 0;
		delay = 0
		with(obj_texty_exitbox)
		{
			selected = 1;	
		}
	}

	if (selected) && (jump_pressed)
	{
		audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		
		if (instance_exists(obj_texty_generic))
		{
			with(obj_texty_generic)
			{
				string_delete(text,0,all)
				time = 0;
				time2 = 0;
				message_pos = 0;
				spawnerID = other.spawnerID
				text = spawnerID.text;
				string(text)
				text_length = string_length(text)
				pauser = 0;	
				pauser_end = 0;
				inst = -1;
			}
		}
	
		if (instance_exists(obj_texty_marker))
		{
			with(obj_texty_marker)
			{
				string_delete(text,0,all)
				time = 0;
				time2 = 0;
				message_pos = 0;
				
				switch_spawnarrow_anyany = 0
				
				//inst = -1
				spawnerID = other.spawnerID
				markerX = other.markerX;
				markerY = other.markerY;
				markerID = other.markerID;
				text = spawnerID.text;
				string(text)
				text_length = string_length(text)
				pauser = 0;	
				pauser_end = 0;
			}
		}
		with(obj_texty_yesbox)
		{
			instance_destroy()	
		}
		if (instance_exists(obj_texty_exitbox))
		{
			with(obj_texty_exitbox)
			{
				instance_destroy()	
			}
		}
		instance_destroy()
	}

}

if (!gamepad_is_connected(correct_slot)) && (selectedpause = 0)
{
	with(obj_player)
		{
			jump = 0
			jump_pressed = 0
		}
	
	if (selected) && (left_key_pressed)
	{
		selected = 0;
		delay = 0
		with(obj_texty_yesbox)
		{
			selected = 1;	
			selectedpause = 1
		}
	}
	else if (selected) && (right_key_pressed) && (instance_exists(obj_texty_exitbox))
	{
		selected = 0;
		delay = 0
		with(obj_texty_exitbox)
		{
			selected = 1;
			selectedpause = 1
		}
	}

	if (selected) && (jump_pressed)
	{
		audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		
		if (instance_exists(obj_texty_generic))
		{
			with(obj_texty_generic)
			{
				string_delete(text,0,all)
				time = 0;
				time2 = 0;
				message_pos = 0;
				spawnerID = other.spawnerID
				text = spawnerID.text;
				string(text)
				text_length = string_length(text)
				pauser = 0;	
				pauser_end = 0;
				inst = -1;
			}
		}
	
		if (instance_exists(obj_texty_marker))
		{
			with(obj_texty_marker)
			{
				string_delete(text,0,all)
				time = 0;
				time2 = 0;
				message_pos = 0;
				
				switch_spawnarrow_anyany = 0
				
				spawnerID = other.spawnerID
				markerX = other.markerX;
				markerY = other.markerY;
				markerID = other.markerID;
				text = spawnerID.text;
				string(text)
				text_length = string_length(text)
				pauser = 0;	
				pauser_end = 0;
			}
		}
		with(obj_texty_yesbox)
		{
			instance_destroy()	
		}
		if (instance_exists(obj_texty_exitbox))
		{
			with(obj_texty_exitbox)
			{
				instance_destroy()	
			}
		}
		instance_destroy()
	}

}


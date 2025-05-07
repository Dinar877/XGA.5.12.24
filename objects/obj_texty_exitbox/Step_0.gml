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

	if (selected) && (left_key_pressed)
	{
		delay = 0
		selected = 0;	
		with(obj_texty_nobox)
		{
			selected = 1;	
			selectedpause = 1
		}
	}

	if (instance_exists(obj_maptile_tile_hint))
	{
		if (selected) && (jump_pressed) && (obj_maptile_tile_hint.sectortile != global.sector_active)
		&& (inst_hint_no == 0)
		{
			with(obj_texty_marker)
			{
				switch_MARKERBOX = 1
				switch_inst = 1
			}
			off = 1
			
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
	else if (!instance_exists(obj_maptile_tile_hint))
	{
		if (selected) && (jump_pressed)
		{
			with(obj_texty_marker)
			{
				switch_MARKERBOX = 1
				switch_inst = 1
			}
			off = 1
			
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
}

if (!gamepad_is_connected(correct_slot)) && (selectedpause = 0)
{
	if (selected) && (left_key_pressed)
	{
		delay = 0
		selected = 0;	
		with(obj_texty_nobox)
		{
			selected = 1;	
			selectedpause = 1
		}
	}

	if (instance_exists(obj_maptile_tile_hint))
	{
		if (selected) && (jump_pressed) && (obj_maptile_tile_hint.sectortile != global.sector_active)
		&& (inst_hint_no == 0)
		{
			with(obj_texty_marker)
			{
				switch_MARKERBOX = 1
				switch_inst = 1
			}
			off = 1
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
	else if (!instance_exists(obj_maptile_tile_hint))
	{
		if (selected) && (jump_pressed)
		{
			with(obj_texty_marker)
			{
				switch_MARKERBOX = 1
				switch_inst = 1
			}
			off = 1
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
}



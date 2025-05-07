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
	if (selected) && (right_key_pressed)
	{
		selected = 0;	
		delay = 0
		with(obj_texty_nobox)
		{
			selected = 1;	
		}
	}

	if (selected) && (jump_pressed)
	{
		audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		
		instance_destroy();
		with(obj_scrnDark_navigational)
		{
			instance_destroy()	
		}
		with(obj_scrnDark_navigational2)
		{
			image_index = 0;
			sprite_index = spr_bg_navigational2_rev;
			image_speed = 1;
		}
	
		if (instance_exists(obj_scrnDark_navigational2_test1))
		{
			with(obj_scrnDark_navigational2_test1)
			{
				image_index = 0;
				sprite_index = spr_bg_navigational2_rev;
				image_speed = 1;
			}	
		}
		
		if (instance_exists(obj_scrnDark_lockdown))
		{
			with(obj_scrnDark_lockdown)
			{
				image_index = 0;
				sprite_index = spr_bg_navigational2_rev;
				image_speed = 1;
			}	
		}
		
		
	
	
	
		if (instance_exists(obj_texty_generic))
		{
			instance_destroy(obj_texty_generic)
		}
		if (instance_exists(obj_texty_marker))
		{
			instance_destroy(obj_texty_marker)
		}
	
		with(obj_texty_exitbox)
		{
			instance_destroy()	
		}
		with(obj_texty_nobox)
		{
			instance_destroy()	
		}
		if (instance_exists(obj_texty))
		{
			instance_destroy(obj_texty)
		}
		with(obj_texty_heading)
		{
			instance_destroy()
		}
		with(obj_texty_nobox)
		{
			instance_destroy()	
		}
	
		if (instance_exists(obj_text_spawning_biome1_1))
		{
			with(obj_text_spawning_biome1_1)
			{
				instance_destroy()	
			}
		}
		else if (instance_exists(obj_text_spawning_biome1_2))
		{
			with(obj_text_spawning_biome1_2)
			{
				instance_destroy()	
			}
		}
		else if (instance_exists(obj_text_spawning_0_1))
		{
			with(obj_text_spawning_0_1)
			{
				instance_destroy()	
			}
		}
	
		if (instance_exists(obj_text_spawning_arrow))
		{
			with(obj_text_spawning_arrow)
			{
				instance_destroy()	
			}
		}
	
		with(obj_navigation_standbyeffect)
		{
			instance_destroy()	
		}
		global.navigation = 0;
		global.navigation_effect = 0;
		global.pause_player = 0;
		global.upgrade_process_data = 0
		instance_activate_object(obj_link_healthUI)
		instance_activate_object(obj_link_map)	
		
		with(obj_player)
		{
			jump = 0
			jump_pressed = 0
		}
	}

}

if (!gamepad_is_connected(correct_slot)) && (selectedpause = 0)
{
	if (selected) && (right_key_pressed)
	{
		selected = 0;	
		delay = 0
		with(obj_texty_nobox)
		{
			selected = 1;	
			selectedpause = 1
		}
	}

	if (selected) && (jump_pressed)
	{
		//audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		
		instance_destroy();
		with(obj_scrnDark_navigational)
		{
			instance_destroy()	
		}
		with(obj_scrnDark_navigational2)
		{
			image_index = 0;
			sprite_index = spr_bg_navigational2_rev;
			image_speed = 1;
		}
	
		if (instance_exists(obj_scrnDark_navigational2_test1))
		{
			with(obj_scrnDark_navigational2_test1)
			{
				image_index = 0;
				sprite_index = spr_bg_navigational2_rev;
				image_speed = 1;
			}	
		}
		
		if (instance_exists(obj_scrnDark_lockdown))
		{
			with(obj_scrnDark_lockdown)
			{
				image_index = 0;
				sprite_index = spr_bg_navigational2_rev;
				image_speed = 1;
			}	
		}
	
	
	
		if (instance_exists(obj_texty_generic))
		{
			instance_destroy(obj_texty_generic)
		}
		if (instance_exists(obj_texty_marker))
		{
			instance_destroy(obj_texty_marker)
		}
	
		with(obj_texty_exitbox)
		{
			instance_destroy()	
		}
		with(obj_texty_nobox)
		{
			instance_destroy()	
		}
		if (instance_exists(obj_texty))
		{
			instance_destroy(obj_texty)
		}
		with(obj_texty_heading)
		{
			instance_destroy()
		}
		with(obj_texty_nobox)
		{
			instance_destroy()	
		}
	
		if (instance_exists(obj_text_spawning_biome1_1))
		{
			with(obj_text_spawning_biome1_1)
			{
				instance_destroy()	
			}
		}
		else if (instance_exists(obj_text_spawning_biome1_2))
		{
			with(obj_text_spawning_biome1_2)
			{
				instance_destroy()	
			}
		}
		else if (instance_exists(obj_text_spawning_0_1))
		{
			with(obj_text_spawning_0_1)
			{
				instance_destroy()	
			}
		}
	
		if (instance_exists(obj_text_spawning_arrow))
		{
			with(obj_text_spawning_arrow)
			{
				instance_destroy()	
			}
		}
	
		with(obj_navigation_standbyeffect)
		{
			instance_destroy()	
		}
		global.navigation = 0;
		global.navigation_effect = 0;
		global.pause_player = 0;
		global.upgrade_process_data = 0
		instance_activate_object(obj_link_healthUI)
		instance_activate_object(obj_link_map)	
		
		with(obj_player)
		{
			jump = 0
			jump_pressed = 0
		}
	}

}
/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (FadeNow <= 0)
{
	FadeNow = 0.4;	
}

if (delay < 1) && (selected == 1)
{
	delay += 0.05;	
}


//follow textblock
if (inst_textblock > 0)
{
	x = inst_textblock.x + 140
	y = inst_textblock.y + 3
}


//fill up bar based on volume level for music/sfx
if (is_music = 1)
{
	image_index = (global.music_volume * (image_number-1))
}
else if (is_sfx = 1)
{
	image_index = (global.sfx_volume * (image_number-1))
}

//changing audio levels
if (selected > 0)
{
	if (is_music = 1)
	{
		if (left_key_pressed) && (global.music_volume > 0)
		{
			global.music_volume -= 0.05
			if (global.music_volume < 0.05)
			{
				global.music_volume = 0	
			}
			
			if (audio_is_playing(global.sector_music))
			{
				audio_sound_gain(global.sector_music,global.music_volume,0)
			}
			
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
			
			//save changes
			SavingUI("XGA.SAVEFILE.UI.dat");
		}
		else if (right_key_pressed) && (global.music_volume < 1)
		{
			global.music_volume += 0.05

			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
			
			if (audio_is_playing(global.sector_music))
			{
				audio_sound_gain(global.sector_music,global.music_volume,0)
			}
			
			//save changes
			SavingUI("XGA.SAVEFILE.UI.dat");
		}
	}
	else if (is_sfx = 1)
	{
		if (left_key_pressed) && (global.sfx_volume > 0)
		{
			global.sfx_volume -= 0.05
			if (global.sfx_volume < 0.05)
			{
				global.sfx_volume = 0	
			}
			
			//audio_group_set_gain("audiogroup_sfx", global.sfx_volume, 0)
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
			
			//save changes
			SavingUI("XGA.SAVEFILE.UI.dat");
		}
		else if (right_key_pressed) && (global.sfx_volume < 1)
		{
			global.sfx_volume += 0.05
			//audio_group_set_gain("audiogroup_sfx", global.sfx_volume, 0)
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
			
			//save changes
			SavingUI("XGA.SAVEFILE.UI.dat");
		}
	}
}


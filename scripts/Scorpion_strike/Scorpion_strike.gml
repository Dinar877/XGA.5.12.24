// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scorpion_strike(){

	if (floor(image_index) == 29)
	{
		if (sprite_index == spr_scorpion_strike_right)
		{
			if (audio_is_playing(snd_player_normaljump))
			{
				audio_stop_sound(snd_player_normaljump)
				audio_play_sound(snd_player_normaljump,1000,false,global.sfx_volume)
			}
			else if (!audio_is_playing(snd_player_normaljump))
			{
				audio_play_sound(snd_player_normaljump,1000,false,global.sfx_volume)
			}
		}
		else if (sprite_index == spr_scorpion_strike_left)
		{
			if (audio_is_playing(snd_player_normaljump))
			{
				audio_stop_sound(snd_player_normaljump)
				audio_play_sound(snd_player_normaljump,1000,false,global.sfx_volume)
			}
			else if (!audio_is_playing(snd_player_normaljump))
			{
				audio_play_sound(snd_player_normaljump,1000,false,global.sfx_volume)
			}
		}
	}
	else if (image_index >= image_number-1)
	{
		if (facing = 1)
		{
			sprite_index = spr_scorpion_stand_right
			State_machine_switch_state(Scorpion_stand);
			exit;	
		}
		else if (facing = -1)
		{
			sprite_index = spr_scorpion_stand_left
			State_machine_switch_state(Scorpion_stand);
			exit;	
		}
	}
	
}
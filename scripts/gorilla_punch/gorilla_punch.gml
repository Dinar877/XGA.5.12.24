// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gorilla_punch(){
	
	if (sprite_index != spr_gorilla_punch_left) && (facing = -1)
	{
		image_index = 0
		sprite_index = spr_gorilla_punch_left;	
	}
	else if (sprite_index = spr_gorilla_punch_left) && (image_index >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		
		audio_stop_sound(snd_swordswoosh)
		
		sprite_index = spr_gorilla_stand_left;	
		image_index = 0
		exit
	}
	
	if (sprite_index != spr_gorilla_punch_right) && (facing = 1)
	{
		image_index = 0
		sprite_index = spr_gorilla_punch_right;	
	}
	else if (sprite_index = spr_gorilla_punch_right) && (image_index >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		
		audio_stop_sound(snd_swordswoosh)
		
		sprite_index = spr_gorilla_stand_right;	
		image_index = 0
		exit
	}

	//sound
		if (round(image_index) == 20)
		{
			audio_stop_sound(snd_player_climb)
			audio_play_sound(snd_player_climb,1000,false,global.sfx_volume)
		}
		
	//sound
		if (round(image_index) == 9) && (!audio_is_playing(snd_player_spinjump_shorter))
		{
			audio_stop_sound(snd_player_spinjump_shorter)
			audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
		}

}
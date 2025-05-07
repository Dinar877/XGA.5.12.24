// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darklord_slam(){
	
	if (sprite_index != spr_darklord_strike_left) && (facing = -1)
	{
		image_index = 0
		sprite_index = spr_darklord_strike_left;	
	}
	else if (sprite_index = spr_darklord_strike_left) && (image_index >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_left;	
	}
	
	if (sprite_index != spr_darklord_strike_right) && (facing = 1)
	{
		image_index = 0
		sprite_index = spr_darklord_strike_right;	
	}
	else if (sprite_index = spr_darklord_strike_right) && (image_index >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_right;	
	}
	
	
	//sound
		if (floor(image_index) == 27)
		{
			if (instance_exists(obj_camera))
			{
				with(obj_camera)
				{
					if (yshake <= 0)
					{
						yshake = 5;
						yshakeno = 3;
					}
				}
			}
			
			audio_stop_sound(snd_swordswoosh)
			var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)
			audio_sound_gain(snd1,1,0)
			audio_sound_gain(snd1,0,500)
			
			
			audio_stop_sound(snd_rockimpact1)
			var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
			audio_sound_gain(snd,1,0)
			audio_sound_gain(snd,0,1000)
			
			audio_stop_sound(snd_beamexplosion)
			var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)	
		}
		
	//sound
		if (floor(image_index) == 3)
		{
			audio_stop_sound(snd_player_climb)
			var snd1 = audio_play_sound(snd_player_climb,1000,false,global.sfx_volume)	
			
			audio_sound_pitch(snd1,1.1)
			audio_sound_set_track_position(snd1,0.6)
			audio_sound_gain(snd1,1,0)
			audio_sound_gain(snd1,0,500)
		}
		
	//sound
		if (floor(image_index) == 26)
		{
			audio_stop_sound(snd_swordswoosh)
			var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			
			audio_sound_pitch(snd1,1.1)
			audio_sound_set_track_position(snd1,0.6)
			audio_sound_gain(snd1,1,0)
			audio_sound_gain(snd1,0,500)
		}
		
	//sound
		if (floor(image_index) == 38)
		{
			audio_stop_sound(snd_snap)
			var snd1 = audio_play_sound(snd_snap,1000,false,global.sfx_volume)	
			audio_sound_gain(snd1,0.5,0)
		}

}
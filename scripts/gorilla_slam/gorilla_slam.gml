// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gorilla_slam(){
	
	if (sprite_index != spr_gorilla_smash_left) && (facing = -1)
	{
		image_index = 0
		sprite_index = spr_gorilla_smash_left;	
	}
	else if (sprite_index = spr_gorilla_smash_left) && (image_index >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		sprite_index = spr_gorilla_stand_left;	
		image_index = 0
		exit
	}
	
	if (sprite_index != spr_gorilla_smash_right) && (facing = 1)
	{
		image_index = 0
		sprite_index = spr_gorilla_smash_right;	
	}
	else if (sprite_index = spr_gorilla_smash_right) && (image_index >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		sprite_index = spr_gorilla_stand_right;	
		image_index = 0
		exit
	}
	
	//sound
		if ((image_index) == 23)
		{
			if (instance_exists(obj_camera))
			{
				with(obj_camera)
				{
					if (yshake <= 0)
					{
						yshake = 7;
						yshakeno = 3;
					}
				}
			}
			
			audio_stop_sound(snd_swordswoosh)
			audio_stop_sound(snd_stomp)
			
			var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)
			audio_sound_gain(snd1,1,0)
			audio_sound_gain(snd1,0,500)
			
			var snd = audio_play_sound(snd_stomp,1000,false,global.sfx_volume)
			
			if (facing = 1)
			{
				instance_create(x+130,y+150,obj_explosion6)
				instance_create_depth(x+160,y+149,id.depth-2,obj_boss_gorilla_shockwave)
				
				with(obj_boss_gorilla_shockwave)
				{
					sprite_index = spr_gorilla_shockwave_right	
				}
			}
			else if (facing = -1)
			{
				instance_create(x-130,y+150,obj_explosion6)
				instance_create_depth(x-160,y+149,id.depth-2,obj_boss_gorilla_shockwave)
				
				with(obj_boss_gorilla_shockwave)
				{
					sprite_index = spr_gorilla_shockwave_left
				}
			}
		}
		
	//sound
		if ((image_index) == 12)
		{
			audio_stop_sound(snd_swordswoosh)
			var snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			
			audio_sound_pitch(snd1,1.1)
			audio_sound_set_track_position(snd1,0.6)
			audio_sound_gain(snd1,1,0)
			audio_sound_gain(snd1,0,500)
		}
	
}
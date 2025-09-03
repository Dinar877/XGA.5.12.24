function xga3_vswing() {
	if (sndTimer == false)
	{
		if (!audio_is_playing(snd_alien_talking))
		{
			sndTimer = true;
			audio_stop_sound(snd_alien_talking);
				
			if (sprite_index = spr_xga3_idle_left)
			{
				sprite_index = spr_xga3_vswing_left;
				image_index = 0;
			}
			else if (sprite_index = spr_xga3_idle_right)
			{
				sprite_index = spr_xga3_vswing_right;
				image_index = 0;
			}
		}
	}
	else if (sndTimer == true)
	{
		if (round(image_index) == 2) && (!audio_is_playing(snd_player_spinjump_shorter))
		{
			snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
		}
	
		if (round(image_index) == 15) && (!audio_is_playing(snd_tentacles))
		{
			snd = audio_play_sound(snd_tentacles,1000,false,global.sfx_volume)	
			audio_sound_gain(snd,0,0)
			audio_sound_gain(snd,1,3000)
		}
	
		if (round(image_index) == 40) && (!audio_is_playing(snd_xga3_smash))
		{
			audio_stop_sound(snd_tentacles)	
			snd = audio_play_sound(snd_xga3_smash,1000,false,global.sfx_volume)
			snd = audio_play_sound(snd_sword_wave,1000,false,global.sfx_volume)
			snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)
			audio_sound_pitch(snd,0.4)
		
			if (sprite_index = spr_xga3_vswing_left)
			{
				instance_create_depth(x-260,638,depth-1,obj_enemy_bigexplosion)
			
				var randy = random_range(200,300)
			
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x-randy,632,depth-1,obj_redtemple_piece)
			}
			else if (sprite_index = spr_xga3_vswing_right)
			{
				instance_create_depth(x+200,638,depth-1,obj_enemy_bigexplosion)
			
				var randy = random_range(170,230)
			
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
				instance_create_depth(x+randy,632,depth-1,obj_redtemple_piece)
			}
		}
	
		if (round(image_index) == 47) && (!audio_is_playing(snd_player_spinjump_shorter))
		{
			audio_stop_sound(snd_swordswoosh)
			snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
		}
	
	
		//reset
		if (sprite_index = spr_xga3_vswing_left) && (image_index >= image_number-1)
		{
			 sprite_index = spr_xga3_idle_left;
			 image_index = 0;
			 
			 sndTimer = false;
			 
			 State_machine_switch_state(xga3_idle)
		}
		else if (sprite_index = spr_xga3_vswing_right) && (image_index >= image_number-1)
		{
			 sprite_index = spr_xga3_idle_right;
			 image_index = 0;
			 
			 sndTimer = false;
			 
			 State_machine_switch_state(xga3_idle)
		}
	}

}

function xga3_downvomit() {
		
		//swallowing sfx prep
		if ((sprite_index = spr_xga3_vomit_part1_left) or (sprite_index = spr_xga3_vomit_part1_right))
		&& (round(image_index) == 0) && (!audio_is_playing(snd_xga_swallow))
		{
			snd = audio_play_sound(snd_xga_swallow,1000,false,global.sfx_volume * 4);
			audio_sound_pitch(snd,1.5);
		}
		
		//end part 1
		if (sprite_index = spr_xga3_vomit_part1_left) && (image_index >= image_number-1)
		{
			sprite_index = spr_xga3_vomit_part2_left;
			instance_create_depth(x-104,y+32,depth+1,obj_xga3_vomit_stream);
			
			audio_stop_sound(snd_xga_swallow);
			audio_play_sound(snd_xga3_vomit_loop,1000,true,global.sfx_volume);
		}
		else if (sprite_index = spr_xga3_vomit_part1_right) && (image_index >= image_number-1)
		{
			sprite_index = spr_xga3_vomit_part2_right;
			instance_create_depth(x+107,y+32,depth+1,obj_xga3_vomit_stream);
			
			audio_stop_sound(snd_xga_swallow);
			audio_play_sound(snd_xga3_vomit_loop,1000,true,global.sfx_volume);
		}
		
		//timer for part 2
		if (sprite_index = spr_xga3_vomit_part2_left) && (instance_exists(obj_xga3_vomit_stream))
		{
			if (obj_xga3_vomit_stream.timer >= 1) && (obj_xga3_vomit_stream.sprite_index != spr_xga3_vomiting_ending)
			{
				obj_xga3_vomit_stream.sprite_index = spr_xga3_vomiting_ending;
				
				audio_stop_sound(snd_xga3_vomit_loop);
			}
		}
		else if (sprite_index = spr_xga3_vomit_part2_right) && (instance_exists(obj_xga3_vomit_stream))
		{
			if (obj_xga3_vomit_stream.timer >= 1) && (obj_xga3_vomit_stream.sprite_index != spr_xga3_vomiting_ending)
			{
				obj_xga3_vomit_stream.sprite_index = spr_xga3_vomiting_ending;
				
				audio_stop_sound(snd_xga3_vomit_loop);
			}
		}
	
	
		//reset
		if (sprite_index = spr_xga3_vomit_part3_left) && (image_index >= image_number-1)
		{
			 sprite_index = spr_xga3_idle_left;
			 image_index = 0;
			 
			 sndTimer = false;
			 
			 audio_stop_sound(snd_xga3_vomit_loop);
			 
			 State_machine_switch_state(xga3_idle)
		}
		else if (sprite_index = spr_xga3_vomit_part3_right) && (image_index >= image_number-1)
		{
			 sprite_index = spr_xga3_idle_right;
			 image_index = 0;
			 
			 sndTimer = false;
			 
			 audio_stop_sound(snd_xga3_vomit_loop);
			 
			 State_machine_switch_state(xga3_idle)
		}
	

}

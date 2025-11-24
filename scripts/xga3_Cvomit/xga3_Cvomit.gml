function xga3_Cvomit() {
	
		//start main animation parts
		if (sprite_index = spr_xga3_Cvomit_prep_left) && (image_index >= image_number-1)
		{
			sprite_index = spr_xga3_Cvomit_part1_left;
		}
		else if (sprite_index = spr_xga3_Cvomit_prep_right) && (image_index >= image_number-1)
		{
			sprite_index = spr_xga3_Cvomit_part1_right;
		}
		
		//swallowing sfx prep
		if ((sprite_index = spr_xga3_Cvomit_part1_left) or (sprite_index = spr_xga3_Cvomit_part1_right))
		&& (round(image_index) == 0) && (!audio_is_playing(snd_xga_swallow))
		{
			snd = audio_play_sound(snd_xga_swallow,1000,false,global.sfx_volume * 4);
			audio_sound_pitch(snd,2);
		}
		
		//part 1 sfx vomit explosion & loop start
		if ((sprite_index = spr_xga3_Cvomit_part1_left) or (sprite_index = spr_xga3_Cvomit_part1_right))
		&& (round(image_index) == 22) && (!audio_is_playing(snd_beamexplosion))
		{
			audio_stop_sound(snd_xga_swallow);
			snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
			audio_sound_pitch(snd,0.8);
		}
		else if ((sprite_index = spr_xga3_Cvomit_part1_left) or (sprite_index = spr_xga3_Cvomit_part1_right))
		&& (round(image_index) == 23) && (!audio_is_playing(snd_xga3_vomit_loop))
		{
			audio_play_sound(snd_xga3_vomit_loop,1000,true,global.sfx_volume);
		}
		
		
		
		//end part 1
		if (sprite_index = spr_xga3_Cvomit_part1_left) && (image_index >= image_number-1)
		{
			sprite_index = spr_xga3_Cvomit_part2_left;
			instance_create_depth(764,360,depth-1,obj_xga3_Cvomit_pool);
		}
		else if (sprite_index = spr_xga3_Cvomit_part1_right) && (image_index >= image_number-1)
		{
			sprite_index = spr_xga3_Cvomit_part2_right;
			instance_create_depth(764,360,depth-1,obj_xga3_Cvomit_pool);		
		}
	
	
		//reset
		if (sprite_index = spr_xga3_Cvomit_part3_left) && (image_index >= image_number-1)
		{
			 sprite_index = spr_xga3_idle_left;
			 image_index = 0;
			 
			 sndTimer = false;
			 
			 audio_stop_sound(snd_xga3_vomit_loop);
			 
			 State_machine_switch_state(xga3_idle)
		}
		else if (sprite_index = spr_xga3_Cvomit_part3_right) && (image_index >= image_number-1)
		{
			 sprite_index = spr_xga3_idle_right;
			 image_index = 0;
			 
			 sndTimer = false;
			 
			 audio_stop_sound(snd_xga3_vomit_loop);
			 
			 State_machine_switch_state(xga3_idle)
		}
	

}

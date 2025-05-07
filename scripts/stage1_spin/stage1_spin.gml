function stage1_spin() {
	if (sprite_index = spr_stage1_stand_left)
	{
		sprite_index = spr_stage1_roll_begin_left
	}
	else if (sprite_index = spr_stage1_stand_right)
	{
		sprite_index = spr_stage1_roll_begin_right
	}

	if (sprite_index = spr_stage1_roll_begin_left) && (image_index >= image_number-1)
	{
		sprite_index = spr_stage1_roll_active_left
	}
	else if (sprite_index = spr_stage1_roll_begin_right) && (image_index >= image_number-1)
	{
		sprite_index = spr_stage1_roll_active_right
	}

	drillnow += (1/room_speed)/2

	if (sprite_index = spr_stage1_roll_active_left) && (drillnow < 1)
	{
		image_speed = 1
		with(inst)
		{
			if (!place_meeting(x+hspd,y+vspd,obj_block))
			{
				hspd = -4
				Moving_slow_left()
			}
			else if (place_meeting(x+hspd,y+vspd,obj_block)) && (hspd < 0)
			{
				hspd = 4
				with(other)
				{
					sprite_index = spr_stage1_roll_active_right	
				}
				Moving_slow_right()
			}
		}
		
		//rolling sfx
		if (floor(image_index) = (image_number-1)/2) or (floor(image_index) = image_number-1)
			{
				audio_stop_sound(snd_rockimpact1)
				audio_stop_sound(snd_rockimpact2)
				audio_stop_sound(snd_rockimpact3)
				
				var decider = round(random_range(0,2))
	
				if (decider == 0)
				{
					var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
				}
				else if (decider == 1)
				{
					var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
				}
				else if (decider == 2)
				{
					var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
				}
				
				
				//snd = audio_sound_gain(snd,0.5,0)	
			}
	}
	else if (sprite_index = spr_stage1_roll_active_right) && (drillnow < 1)
	{
		image_speed = 1
		with(inst)
		{
			if (!place_meeting(x+hspd,y+vspd,obj_block))
			{
				hspd = 4
				Moving_slow_right()
			}
			else if (place_meeting(x+hspd,y+vspd,obj_block)) && (hspd > 0)
			{
				hspd = -4
				with(other)
				{
					sprite_index = spr_stage1_roll_active_left
				}
				Moving_slow_left()
			}
		}
		
		//rolling sfx
		if (floor(image_index) = (image_number-1)/2) or (floor(image_index) = image_number-1)
			{
				audio_stop_sound(snd_rockimpact1)
				audio_stop_sound(snd_rockimpact2)
				audio_stop_sound(snd_rockimpact3)
				
				var decider = round(random_range(0,2))
	
				if (decider == 0)
				{
					var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
				}
				else if (decider == 1)
				{
					var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
				}
				else if (decider == 2)
				{
					var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
				}
				
				
				//snd = audio_sound_gain(snd,0.5,0)	
			}
	}



	if (sprite_index = spr_stage1_roll_active_left) && (drillnow >= 1)
	{
		sprite_index = spr_stage1_stand_left
		drillnow = 0
		State_machine_switch_state(stage1_idle)
	}
	else if (sprite_index = spr_stage1_roll_active_right) && (drillnow >= 1)
	{
		sprite_index = spr_stage1_stand_right
		drillnow = 0
		State_machine_switch_state(stage1_idle)
	}


}

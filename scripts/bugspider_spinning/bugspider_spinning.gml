////left
function bugspider_spinning() {
	if (sprite_index = spr_boss_bugspider_spinleft) && (image_index >= 23) && (image_index < 51)
	{
		if (spriteheight + 2 < 16+60) && (image_index >= 23) && (image_index < 38)
		{
			spriteheight += 2;
		}
		with(obj_camera)
		{
			if (yshake <= 0)
			{
				yshake = 2;
				yshakeno = 3;
			
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
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)
			}
		}
		with(inst)
		{
			hspd = -3;
			if (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
			{
				Moving_slow_left();
			}
			if (instance_number(obj_explosion_random_bugspider) < 40)
			{
				instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
			}
		}
	
	}
	else if (sprite_index = spr_boss_bugspider_spinleft) && (image_index >= 38) && (image_index < image_number-1)
	{
		if (spriteheight - 2 > 16)
		{
			spriteheight -= 2;
		}
		with(obj_camera)
		{
			if (yshake <= 0)
			{
				yshake = 2;
				yshakeno = 3;
			
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
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)
			}
		}
		with(inst)
		{
			hspd = -3;
			if (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
			{
				Moving_slow_left();
			}
			if (instance_number(obj_explosion_random_bugspider) < 40)
			{
				instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
			}
		}
	


	}
	else if (sprite_index = spr_boss_bugspider_spinleft) && (image_index >= image_number-1)
	{
		spriteheight = 16;
		image_index = 0;
		sprite_index = spr_boss_bugspider_walkleft;
		State_machine_switch_state(bugspider_walking)
	}



	////right
	if (sprite_index = spr_boss_bugspider_spinright) && (image_index >= 23) && (image_index < 51)
	{
		if (spriteheight +2 < 16+60) && (image_index >= 23) && (image_index < 38)
		{
			spriteheight+=2;
		}
		with(obj_camera)
		{
			if (yshake <= 0)
			{
				yshake = 2;
				yshakeno = 3;
			
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
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)
			}
		}
		with(inst)
		{
			hspd = 3;
			if (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
			{
				Moving_slow_right();
			}
			if (instance_number(obj_explosion_random_bugspider) < 20)
			{
				instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
			}
		}

	}
	else if (sprite_index = spr_boss_bugspider_spinright) && (image_index >= 38) && (image_index < image_number-1)
	{
		if (spriteheight - 2 > 16)
		{
			spriteheight -= 2;
		}
		with(obj_camera)
		{
			if (yshake <= 0)
			{
				yshake = 2;
				yshakeno = 3;
			
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
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)
			}
		}
		with(inst)
		{
			hspd = 3;
			if (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
			{
				Moving_slow_right();
			}
			if (instance_number(obj_explosion_random_bugspider) < 20)
			{
				instance_create_layer(random_range(bbox_left,bbox_right), bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
			}
		}
	
	

	}
	else if (sprite_index = spr_boss_bugspider_spinright) && (image_index >= image_number-1)
	{
		spriteheight = 16;
		image_index = 0;
		sprite_index = spr_boss_bugspider_walkright;
		State_machine_switch_state(bugspider_walking)
	}


}

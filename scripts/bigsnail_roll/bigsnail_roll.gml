// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bigsnail_roll(){
	
	var localhspd = 4;

	if (facing = -1) && (sprite_index != spr_bigsnail_fastroll_left) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_bigsnail_fastroll_left
		
		//sfx
		if (!audio_is_playing(snd_revvingup))
		{
			audio_play_sound(snd_revvingup,1000,global.sfx_volume)
		}
	}
	else if (facing = 1) && (sprite_index != spr_bigsnail_fastroll_right) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_bigsnail_fastroll_right
		
		//sfx
		if (!audio_is_playing(snd_revvingup))
		{
			audio_play_sound(snd_revvingup,1000,global.sfx_volume)
		}
	}
	
	if (facing = -1) && (sprite_index = spr_bigsnail_fastroll_left) && (round(image_index) >= image_number-1) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_bigsnail_roll_left
		rolltimer += 1/6
		
		audio_stop_sound(snd_revvingup);
	}
	else if (facing = 1) && (sprite_index = spr_bigsnail_fastroll_right) && (round(image_index) >= image_number-1) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_bigsnail_roll_right
		rolltimer += 1/6
		
		audio_stop_sound(snd_revvingup);
	}
	
	//rolling movement
	with(inst)
	{
		if (obj_boss_bigsnail_sprites.sprite_index = spr_bigsnail_roll_left) && (!place_meeting(x+3,y-3,obj_block)) && (!place_meeting(x-3,y-3,obj_block))
		&& (obj_boss_bigsnail_sprites.rolltimer < 1) && (obj_boss_bigsnail_sprites.rolltimer > 0)
		{
			with(obj_boss_bigsnail_sprites)
			{
					sprite_index = spr_bigsnail_roll_left
					facing = -1
		
					with(inst)
					{
						hspd = -localhspd
						Moving_slow_left_biggerthan1()
					}
					rolltimer += (1/room_speed)/8
					
					//explosion rolling effect
					if (instance_number(obj_explosion_random_bugspider) < 20)
					{
						instance_create_layer(x, bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
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
							
							//snd = audio_sound_gain(snd,0.5,0)
						}
					}
			}
		}
		else if (obj_boss_bigsnail_sprites.sprite_index = spr_bigsnail_roll_right) && (place_meeting(x+3,y-3,obj_block)) && (!place_meeting(x-3,y-3,obj_block))
		&& (obj_boss_bigsnail_sprites.rolltimer < 1) && (obj_boss_bigsnail_sprites.rolltimer > 0)
		{
			with(obj_boss_bigsnail_sprites)
			{
					sprite_index = spr_bigsnail_roll_left
					facing = -1
		
					with(inst)
					{
						hspd = -localhspd
						Moving_slow_left_biggerthan1()
					}
					rolltimer += (1/room_speed)/8
					
					//explosion rolling effect
					if (instance_number(obj_explosion_random_bugspider) < 20)
					{
						instance_create_layer(x, bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
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
							
							//snd = audio_sound_gain(snd,0.5,0)
						}
					}
			}
		}
		else if (obj_boss_bigsnail_sprites.sprite_index = spr_bigsnail_roll_right) && (!place_meeting(x-3,y-3,obj_block)) && (!place_meeting(x+3,y-3,obj_block))
		&& (obj_boss_bigsnail_sprites.rolltimer < 1) && (obj_boss_bigsnail_sprites.rolltimer > 0)
		{
			with(obj_boss_bigsnail_sprites)
			{
					sprite_index = spr_bigsnail_roll_right
					facing = 1
		
					with(inst)
					{
						hspd = localhspd
						Moving_slow_right_biggerthan1()
					}
					rolltimer += (1/room_speed)/8
					
					//explosion rolling effect
					if (instance_number(obj_explosion_random_bugspider) < 20)
					{
						instance_create_layer(x, bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
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
							
							//snd = audio_sound_gain(snd,0.5,0)
						}
					}
			}
		}
		else if (obj_boss_bigsnail_sprites.sprite_index = spr_bigsnail_roll_left) && (place_meeting(x-3,y-3,obj_block)) && (!place_meeting(x+3,y-3,obj_block))
		&& (obj_boss_bigsnail_sprites.rolltimer < 1) && (obj_boss_bigsnail_sprites.rolltimer > 0)
		{
			with(obj_boss_bigsnail_sprites)
			{
					sprite_index = spr_bigsnail_roll_right
					facing = 1
		
					with(inst)
					{
						hspd = localhspd
						Moving_slow_right_biggerthan1()
					}
					rolltimer += (1/room_speed)/8
					
					//explosion rolling effect
					if (instance_number(obj_explosion_random_bugspider) < 20)
					{
						instance_create_layer(x, bbox_bottom, layer_get_id("Inst_doors"),obj_explosion_random_bugspider)	
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
							
							//snd = audio_sound_gain(snd,0.5,0)
						}
					}
			}
		}
	}
	
	if (sprite_index = spr_bigsnail_roll_left) && (rolltimer >= 1) && (round(image_index) >= image_number-1) && (rolltimer > 0)
	{
		image_index = 0
		image_speed = 1
		sprite_index = spr_bigsnail_left
		rolltimer = 0
		State_machine_switch_state(bigsnail_idle)
	}
	else if (sprite_index = spr_bigsnail_roll_right) && (rolltimer >= 1) && (round(image_index) >= image_number-1) && (rolltimer > 0)
	{
		image_index = 0
		image_speed = 1
		sprite_index = spr_bigsnail_right
		rolltimer = 0
		State_machine_switch_state(bigsnail_idle)
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
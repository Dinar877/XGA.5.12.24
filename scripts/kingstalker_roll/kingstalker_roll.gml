// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kingstalker_roll(){

	if (facing = -1) && (sprite_index != spr_kingstalker_roll_prep_left) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_kingstalker_roll_prep_left
	}
	else if (facing = 1) && (sprite_index != spr_kingstalker_roll_prep_right) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_kingstalker_roll_prep_right
	}
	
	if (facing = -1) && (sprite_index = spr_kingstalker_roll_prep_left) && (round(image_index) >= image_number-1) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_kingstalker_rolling_left
		rolltimer = 00000000000000000000000.1
	}
	else if (facing = 1) && (sprite_index = spr_kingstalker_roll_prep_right) && (round(image_index) >= image_number-1) && (rolltimer <= 0)
	{
		image_index = 0
		sprite_index = spr_kingstalker_rolling_right
		rolltimer = 00000000000000000000000.1
	}
	
	//rolling movement
	with(inst)
	{
		if (obj_boss_kingstalker_sprites.sprite_index = spr_kingstalker_rolling_left) && (!place_meeting(x+3,y-3,obj_block)) && (!place_meeting(x-3,y-3,obj_block))
		&& (obj_boss_kingstalker_sprites.rolltimer < 1) && (obj_boss_kingstalker_sprites.rolltimer > 0) //between 1 and 0
		{
			with(obj_boss_kingstalker_sprites)
			{
					sprite_index = spr_kingstalker_rolling_left
					facing = -1
		
					with(inst)
					{
						hspd = -2
						Moving_slow_left_biggerthan1()
					}
					rolltimer += random_range((1/room_speed)/5,(1/room_speed)/55)
		
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 2;
							yshakeno = 3;
			
							audio_stop_sound(snd_grass_landing)
							audio_play_sound(snd_grass_landing,1000,false)
						}
					}
			}
		}
		else if (obj_boss_kingstalker_sprites.sprite_index = spr_kingstalker_rolling_right) && (place_meeting(x+3,y-3,obj_block)) && (!place_meeting(x-3,y-3,obj_block))
		&& (obj_boss_kingstalker_sprites.rolltimer < 1) && (obj_boss_kingstalker_sprites.rolltimer > 0)
		{
			with(obj_boss_kingstalker_sprites)
			{
					sprite_index = spr_kingstalker_rolling_left
					facing = -1
		
					with(inst)
					{
						hspd = -2
						Moving_slow_left_biggerthan1()
					}
					rolltimer += random_range((1/room_speed)/5,(1/room_speed)/55)
		
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 2;
							yshakeno = 3;
			
							audio_stop_sound(snd_grass_landing)
							audio_play_sound(snd_grass_landing,1000,false)
						}
					}
			}
		}
		else if (obj_boss_kingstalker_sprites.sprite_index = spr_kingstalker_rolling_right) && (!place_meeting(x-3,y-3,obj_block)) && (!place_meeting(x+3,y-3,obj_block))
		&& (obj_boss_kingstalker_sprites.rolltimer < 1) && (obj_boss_kingstalker_sprites.rolltimer > 0)
		{
			with(obj_boss_kingstalker_sprites)
			{
					sprite_index = spr_kingstalker_rolling_right
					facing = 1
		
					with(inst)
					{
						hspd = 2
						Moving_slow_right_biggerthan1()
					}
					rolltimer += random_range((1/room_speed)/5,(1/room_speed)/55)
		
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 2;
							yshakeno = 3;
			
							audio_stop_sound(snd_grass_landing)
							audio_play_sound(snd_grass_landing,1000,false)
						}
					}
			}
		}
		else if (obj_boss_kingstalker_sprites.sprite_index = spr_kingstalker_rolling_left) && (place_meeting(x-3,y-3,obj_block)) && (!place_meeting(x+3,y-3,obj_block))
		&& (obj_boss_kingstalker_sprites.rolltimer < 1) && (obj_boss_kingstalker_sprites.rolltimer > 0)
		{
			with(obj_boss_kingstalker_sprites)
			{
					sprite_index = spr_kingstalker_rolling_right
					facing = 1
		
					with(inst)
					{
						hspd = 2
						Moving_slow_right_biggerthan1()
					}
					rolltimer += random_range((1/room_speed)/5,(1/room_speed)/55)
		
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 2;
							yshakeno = 3;
			
							audio_stop_sound(snd_grass_landing)
							audio_play_sound(snd_grass_landing,1000,false)
						}
					}
			}
		}
	}

	
	
	
	if (sprite_index = spr_kingstalker_rolling_left) && (rolltimer >= 1) && (round(image_index) >= image_number-1) && (rolltimer > 0)
	{
		sprite_index = spr_kingstalker_roll_prep_left
		image_index = image_number-1
		image_speed = -1
	}
	else if (sprite_index = spr_kingstalker_rolling_right) && (rolltimer >= 1) && (round(image_index) >= image_number-1) && (rolltimer > 0)
	{
		sprite_index = spr_kingstalker_roll_prep_right
		image_index = image_number-1
		image_speed = -1
	}
	
	if (sprite_index = spr_kingstalker_roll_prep_left) && (rolltimer >= 1) && (round(image_index) >= image_number-1) && (rolltimer > 0)
	{
		image_index = 0
		image_speed = 1
		sprite_index = spr_kingstalker_idle_left
		rolltimer = 0
		State_machine_switch_state(kingstalker_idle)
	}
	else if (sprite_index = spr_kingstalker_roll_prep_right) && (rolltimer >= 1) && (round(image_index) >= image_number-1) && (rolltimer > 0)
	{
		image_index = 0
		image_speed = 1
		sprite_index = spr_kingstalker_idle_right
		rolltimer = 0
		State_machine_switch_state(kingstalker_idle)
	}
	
	
	//rolling sfx
	if (floor(image_index) = (image_number-1)/2) or (floor(image_index) = image_number-1)
			{
				audio_stop_sound(snd_grass_landing)
				audio_play_sound(snd_grass_landing,1000,false)
			}
	

}
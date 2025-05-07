// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gorilla_rollback(){

	
	if (sprite_index != spr_gorilla_roll_left) && (facing = -1)
	{
		image_index = 0
		sprite_index = spr_gorilla_roll_left;	
	}
	
	if (sprite_index = spr_gorilla_roll_left) && (round(image_index) >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		sprite_index = spr_gorilla_stand_left;	
		image_index = 0
		timer1 = 0
		exit
	}
	
	if (sprite_index != spr_gorilla_roll_right) && (facing = 1)
	{
		image_index = 0
		sprite_index = spr_gorilla_roll_right;	
	}
	
	if (sprite_index = spr_gorilla_roll_right) && (round(image_index) >= image_number-1)
	{
		State_machine_switch_state(gorilla_idle);
		sprite_index = spr_gorilla_stand_right;	
		image_index = 0
		timer1 = 0
		exit
	}
	
	
	if (sprite_index = spr_gorilla_roll_left)
	{
		with(obj_boss_gorilla_hitbox)
		{
			hspd = 1
			Moving_slow_right_biggerthan1()
		}
		
		
		//sfx
		if (round(image_index) == 0) or (round(image_index) == 6)
			{
				if (instance_exists(obj_camera))
				{
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 3;
							yshakeno = 3;
						}
					}
				}
				
				audio_stop_sound(snd_beamexplosion1)
				var snd = audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
			}
	}
	else if (sprite_index = spr_gorilla_roll_right)
	{
		with(obj_boss_gorilla_hitbox)
		{
			hspd = -1
			Moving_slow_left_biggerthan1()
		}
		
		//sfx
		if (round(image_index) == 0) or (round(image_index) == 6)
			{
				if (instance_exists(obj_camera))
				{
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 3;
							yshakeno = 3;
						}
					}
				}
				
				audio_stop_sound(snd_beamexplosion1)
				var snd = audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
			}
	}
}
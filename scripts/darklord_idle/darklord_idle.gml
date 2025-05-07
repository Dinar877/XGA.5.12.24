// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darklord_idle(){
	
	if (obj_player.x > self.x) && (facing = -1)
	{
		State_machine_switch_state(darklord_turning);
		exit
	}
	else if (obj_player.x < self.x) && (facing = 1)
	{
		State_machine_switch_state(darklord_turning);
		exit
	}
	
	var randomy = round(random_range(0,1))
	
	var farInst = collision_rectangle(x,y-30,x+(160*facing),y+30,obj_player,false,true)
	inst1 = collision_rectangle(x,y-30,x+(110*facing),y+30,obj_player,false,true)
	inst = collision_rectangle(x,y-30,x+(110*facing),y+30,obj_player,false,true)
	
	if (inst1 > 0) && (randomy <= 0)
	{
		State_machine_switch_state(darklord_slam)
		exit
	}
	else if (inst > 0) && (randomy == 1)
	{
		State_machine_switch_state(darklord_shoot)
		exit
	}
	else if (farInst) //charging shoot explosions
	{
		State_machine_switch_state(darklord_chargingshoot)
		exit
	}
	
	
	if (obj_player.x > self.x) && (facing = 1) && (!place_meeting(x,y,obj_player))
	{
		if (sprite_index != spr_darklord_walk_right)
		{
			image_index = 0	
			sprite_index = spr_darklord_walk_right
		}
		
		if (sprite_index = spr_darklord_walk_right)
		{
			with(obj_boss_darklord_hitbox)
			{
				hspd = 1/4
				Moving_slow_right_lessthan1()
			}
			
			if ((image_index) == 0) or ((image_index) == 7)
			{
				if (instance_exists(obj_camera))
				{
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 2;
							yshakeno = 3;
						}
					}
				}
				
				audio_stop_sound(snd_beamexplosion)
				var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
				//snd = audio_sound_gain(snd,0.5,0)
			}
		}
	}
	else if (obj_player.x < self.x) && (facing = -1) && (!place_meeting(x,y,obj_player))
	{
		if (sprite_index != spr_darklord_walk_left)
		{
			image_index = 0	
			sprite_index = spr_darklord_walk_left
		}
		
		if (sprite_index = spr_darklord_walk_left)
		{
			with(obj_boss_darklord_hitbox)
			{
				hspd = -1/4
				Moving_slow_left_lessthan1()
			}
			
			if ((image_index) == 0) or ((image_index) == 7)
			{
				if (instance_exists(obj_camera))
				{
					with(obj_camera)
					{
						if (yshake <= 0)
						{
							yshake = 2;
							yshakeno = 3;
						}
					}
				}
				
				audio_stop_sound(snd_beamexplosion)
				var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
				//snd = audio_sound_gain(snd,0.5,0)
			}
		}
	}
	

}
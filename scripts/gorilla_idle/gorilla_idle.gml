// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gorilla_idle(){
	
	if (obj_player.x > self.x) && (facing = -1)
	{
		State_machine_switch_state(gorilla_turning);
		exit
	}
	else if (obj_player.x < self.x) && (facing = 1)
	{
		State_machine_switch_state(gorilla_turning);
		exit
	}
	
	inst1 = collision_rectangle(x,bbox_top,x+(facing*175),bbox_bottom,obj_player,false,true)
	inst = ((!collision_rectangle(x,bbox_top,x+(facing*200),bbox_bottom,obj_player,false,true)) && (collision_rectangle(x,bbox_top,x+(facing*250),bbox_bottom,obj_player,false,true)))
	
	instvar = collision_rectangle(x,y,x+(facing*160),y,obj_block,false,true)
	rollbacknow = collision_rectangle(x,y,x+(facing*200),y,obj_block,false,true)
	
	
	
	
	
	//roll back
	if (((instvar > 0) && (decider >= 2)) or (rollbacknow > 0))
	{
		State_machine_switch_state(gorilla_rollback)
		
		decider = (random_range(0,3))
		
		exit
	}
	
	
	//slam
	if (obj_player.x > self.x) && (facing = 1) && (inst > 0)
	&& (decider < 1)
	{
		State_machine_switch_state(gorilla_slam)
		
		decider = (random_range(0,3))
		
		//gorilla sfx
		audio_stop_sound(snd_gorilla1)
		audio_stop_sound(snd_gorilla2)
		audio_stop_sound(snd_gorilla3)
		audio_stop_sound(snd_gorillla4)
				
		var decider2 = round(random_range(0,3))
	
		if (decider2 == 0)
		{
			var snd = audio_play_sound(snd_gorilla1,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 1)
		{
			var snd = audio_play_sound(snd_gorilla2,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 2)
		{
			var snd = audio_play_sound(snd_gorilla3,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 3)
		{
			var snd = audio_play_sound(snd_gorillla4,1000,false,global.sfx_volume)	
		}
		
		exit
	}
	else if (obj_player.x < self.x) && (facing = -1) && (inst > 0)
	&& (decider < 1)
	{
		State_machine_switch_state(gorilla_slam)
		
		decider = (random_range(0,3))
		
		//gorilla sfx
		audio_stop_sound(snd_gorilla1)
		audio_stop_sound(snd_gorilla2)
		audio_stop_sound(snd_gorilla3)
		audio_stop_sound(snd_gorillla4)
				
		var decider2 = round(random_range(0,3))
	
		if (decider2 == 0)
		{
			var snd = audio_play_sound(snd_gorilla1,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 1)
		{
			var snd = audio_play_sound(snd_gorilla2,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 2)
		{
			var snd = audio_play_sound(snd_gorilla3,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 3)
		{
			var snd = audio_play_sound(snd_gorillla4,1000,false,global.sfx_volume)	
		}
		
		exit
	}
	
	
	//punch
	if (obj_player.x > self.x) && (facing = 1) && (inst1 > 0)
	&& (decider >= 1) && (decider < 2)
	{
		State_machine_switch_state(gorilla_punch)
		
		decider = (random_range(0,3))
		
		//gorilla sfx
		audio_stop_sound(snd_gorilla1)
		audio_stop_sound(snd_gorilla2)
		audio_stop_sound(snd_gorilla3)
		audio_stop_sound(snd_gorillla4)
				
		var decider2 = round(random_range(0,3))
	
		if (decider2 == 0)
		{
			var snd = audio_play_sound(snd_gorilla1,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 1)
		{
			var snd = audio_play_sound(snd_gorilla2,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 2)
		{
			var snd = audio_play_sound(snd_gorilla3,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 3)
		{
			var snd = audio_play_sound(snd_gorillla4,1000,false,global.sfx_volume)	
		}
		
		
		exit
	}
	else if (obj_player.x < self.x) && (facing = -1) && (inst1 > 0)
	&& (decider >= 1) && (decider < 2)
	{
		State_machine_switch_state(gorilla_punch)
		
		decider = (random_range(0,3))
		
		//gorilla sfx
		audio_stop_sound(snd_gorilla1)
		audio_stop_sound(snd_gorilla2)
		audio_stop_sound(snd_gorilla3)
		audio_stop_sound(snd_gorillla4)
				
		var decider2 = round(random_range(0,3))
	
		if (decider2 == 0)
		{
			var snd = audio_play_sound(snd_gorilla1,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 1)
		{
			var snd = audio_play_sound(snd_gorilla2,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 2)
		{
			var snd = audio_play_sound(snd_gorilla3,1000,false,global.sfx_volume)	
		}
		else if (decider2 == 3)
		{
			var snd = audio_play_sound(snd_gorillla4,1000,false,global.sfx_volume)	
		}
		
		exit
	}
	
	
	
	
	if (obj_player.x > self.x) && (facing = 1) && (!place_meeting(x,y,obj_player))
	{
		if (sprite_index != spr_gorilla_walk_right)
		{
			image_index = 0	
			sprite_index = spr_gorilla_walk_right
		}

		
		if (sprite_index = spr_gorilla_walk_right)
		{
			with(obj_boss_gorilla_hitbox)
			{
				hspd = 1/4
				Moving_slow_right_lessthan1()
			}
			
			if (round(image_index) == 0) or (round(image_index) == 7)
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
	else if (obj_player.x < self.x) && (facing = -1) && (!place_meeting(x,y,obj_player))
	{
		if (sprite_index != spr_gorilla_walk_left)
		{
			image_index = 0	
			sprite_index = spr_gorilla_walk_left
		}

		
		if (sprite_index = spr_gorilla_walk_left)
		{
			with(obj_boss_gorilla_hitbox)
			{
				hspd = -1/4
				Moving_slow_left_lessthan1()
			}
			
			if (round(image_index) == 0) or (round(image_index) == 7)
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
	

}
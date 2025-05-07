function stalker_walking() {
	var player_collision = collision_rectangle(x+5,y,x-5,y,obj_player,false,true)

	if (global.invisibility = 0) && (player_collision)
		{
			State_machine_switch_state(stalker_bite);
			exit;
		}
	else if (global.invisibility = 0) && (player_collision)
		{
			State_machine_switch_state(stalker_bite);
			exit;
		}

	if (obj_player.x > self.x) && (sprite_index = spr_stalker_run_left) && (global.invisibility = 0)
		{
			sprite_index = spr_stalker_idleL;
			State_machine_switch_state(stalker_turning);
		}
	else if (obj_player.x < self.x) && (sprite_index = spr_stalker_run_right) && (global.invisibility = 0)
		{
			sprite_index = spr_stalker_idleR;
			State_machine_switch_state(stalker_turning);
		}
	
	var player_collision2 = collision_circle(x,y,200,obj_player,false,true)
	
	if (obj_player.x < self.x) && (sprite_index = spr_stalker_run_left) && (player_collision2 <= 0)
		{
			sprite_index = spr_stalker_idleL;
			State_machine_switch_state(stalker_idle);
			exit;
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_stalker_run_right) && (player_collision2 <= 0)
		{
			sprite_index = spr_stalker_idleR;
			State_machine_switch_state(stalker_idle);
			exit;
		}
	
	if (obj_player.x < self.x) && (sprite_index = spr_stalker_run_left) && (global.invisibility > 0)
		{
			sprite_index = spr_stalker_idleL;
			State_machine_switch_state(stalker_idle);
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_stalker_run_right) && (global.invisibility > 0)
		{
			sprite_index = spr_stalker_idleR;
			State_machine_switch_state(stalker_idle);
		}
	
	if (sprite_index = spr_stalker_run_left) && (global.invisibility = 0)
		{
			with(instance_place(x,y,obj_enemy_stalker_hitbox))
			{
				hspd = -2;
				Moving_slow_left_biggerthan1()
			}
		}
	else if (sprite_index = spr_stalker_run_right) && (global.invisibility = 0)
		{
			with(instance_place(x,y,obj_enemy_stalker_hitbox))
			{
				hspd = 2;
				Moving_slow_right_biggerthan1()
			}
		}
	

	//footstep sfx	
		if (round(image_index) == 6) or (round(image_index) == 0)
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
			
	//footstep shake
	if (round(image_index) == 6) or (round(image_index) == 0)
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




}

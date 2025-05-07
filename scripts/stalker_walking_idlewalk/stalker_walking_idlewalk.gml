function stalker_walking_idlewalk() {
	var player_collision2 = collision_circle(x,y,150,obj_player,false,true)
	
	if (obj_player.x < self.x) && (sprite_index = spr_stalker_walkingL) && (player_collision2 <= 0)
		{
			sprite_index = spr_stalker_idleL;
			State_machine_switch_state(stalker_idle);
			exit;
		}
	else if (obj_player.x > self.x) && (sprite_index = spr_stalker_walkingR) && (player_collision2 <= 0)
		{
			sprite_index = spr_stalker_idleR;
			State_machine_switch_state(stalker_idle);
			exit
		}

	if (inst_player <= 0)
	{
		if (sprite_index = spr_stalker_walkingL) && (idlewalk >= 0)
		{
			sprite_index = spr_stalker_idleL;
			idlewalk += 320;
			State_machine_switch_state(stalker_idle_idlewalk);
			exit
		}
		else if (sprite_index = spr_stalker_walkingR) && (idlewalk <= 0)
		{
			sprite_index = spr_stalker_idleR;
			idlewalk -= 320;
			State_machine_switch_state(stalker_idle_idlewalk);
			exit
		}
	
		if (sprite_index = spr_stalker_walkingL) && (global.invisibility = 0) && (idlewalk < 0)
		{
			with(instance_place(x,y,obj_enemy_stalker_hitbox))
			{
				hspd = -1/2;
				Moving_slow_left()
			
				if (place_meeting(x+sign(hspd),y,obj_block))
				{
					with(other)
					{
						sprite_index = spr_stalker_idleL;
						State_machine_switch_state(stalker_turning_idlewalk)	
						exit
					}
				}
			}
			idlewalk += 1;
		}
		else if (sprite_index = spr_stalker_walkingR) && (global.invisibility = 0) && (idlewalk > 0)
		{
			with(instance_place(x,y,obj_enemy_stalker_hitbox))
			{
				hspd = 1/2;
				Moving_slow_right()
			
				if (place_meeting(x+sign(hspd),y,obj_block))
				{
					with(other)
					{
						sprite_index = spr_stalker_idleR;
						State_machine_switch_state(stalker_turning_idlewalk)	
						exit
					}
				}
			}
			idlewalk -= 1;
		}
	
	}
	else if (inst_player > 0)
	{
		if (sprite_index = spr_stalker_walkingL)
		{
			sprite_index = spr_stalker_idleL;
			State_machine_switch_state(stalker_idle);
			exit
		}
	else if (sprite_index = spr_stalker_walkingR)
		{
			sprite_index = spr_stalker_idleR;
			State_machine_switch_state(stalker_idle);
			exit
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

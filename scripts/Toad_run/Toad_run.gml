function Toad_run() {
	//get out of running state
	if (sprite_index = spr_enemy_toad_dash_left) && ((global.invisibility = 1) or (inst2.collision_othertoad > 0) or (inst2.inst_collision <= 0) or (position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) or (inst2.inst_collision2 > 0) or (inst2.inst_blockfree > 0))
		{
			sprite_index = spr_enemy_toad_standleft;
			State_machine_switch_state(Toad_stand);
			exit;
		}
	else if (sprite_index = spr_enemy_toad_dash_right) && ((global.invisibility = 1) or (inst2.collision_othertoad > 0) or (inst2.inst_collision <= 0) or (position_meeting(inst2.x+(facing*8),inst2.y,obj_block)) or (inst2.inst_collision2 > 0) or (inst2.inst_blockfree > 0))
		{
			sprite_index = spr_enemy_toad_standright;
			State_machine_switch_state(Toad_stand);
			exit;
		}

	if (obj_player.x > self.x) && (sprite_index = spr_enemy_toad_dash_left) && (global.invisibility = 0) && (!place_meeting(x,y,obj_player))
		{
			sprite_index = spr_enemy_toad_standleft;
			State_machine_switch_state(Toad_turning);
			exit;
		}
	else if (obj_player.x < self.x) && (sprite_index = spr_enemy_toad_dash_right) && (global.invisibility = 0) && (!place_meeting(x,y,obj_player))
		{
			sprite_index = spr_enemy_toad_standright;
			State_machine_switch_state(Toad_turning);
			exit;
		}
	
	
	//actual running code
	if (sprite_index = spr_enemy_toad_dash_left) && (global.invisibility = 0)
		{
			with(inst2)
				{
					hspd = -4
					Moving_slow_left_biggerthan1()
					var inst3 = instance_create_layer(other.x,id.bbox_bottom,layer_get_id("Inst_level_0"),obj_dashsmoke)
					with(inst3)
					{
						sprite_index = spr_dasheffect_smoke1left
						image_speed = 1	
						image_angle = random_range(0,360)
					}
				}
				
			if (image_index = (image_number-1)/2) or (image_index = image_number-1)
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
				
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)	
			}
		}
	else if (sprite_index = spr_enemy_toad_dash_right) && (global.invisibility = 0)
		{
			with(inst2)
				{
					hspd = 4
					Moving_slow_right_biggerthan1()
					var inst3 = instance_create_layer(other.x,id.bbox_bottom,layer_get_id("Inst_level_0"),obj_dashsmoke)
					with(inst3)
					{
						sprite_index = spr_dasheffect_smoke1left
						image_speed = 1	
						image_angle = random_range(0,360)
					}
				}
				
			if (image_index = (image_number-1)/2) or (image_index = image_number-1)
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
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)
			}
		}


}

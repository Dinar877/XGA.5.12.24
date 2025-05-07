function sheller_walking() {
	if (sprite_index = spr_sheller_walk_left_end) && (image_index >= image_number-1)
		{
			sprite_index = spr_sheller_walk_left_begin
			image_index = 0
			
			audio_stop_sound(snd_rockimpact1)
			audio_stop_sound(snd_rockimpact2)
			audio_stop_sound(snd_rockimpact3)
			
			State_machine_switch_state(sheller_turning)
		}
	else if (sprite_index = spr_sheller_walk_right_end) && (image_index >= image_number-1)
		{
			sprite_index = spr_sheller_walk_right_begin
			image_index = 0
			
			audio_stop_sound(snd_rockimpact1)
			audio_stop_sound(snd_rockimpact2)
			audio_stop_sound(snd_rockimpact3)
			
			State_machine_switch_state(sheller_turning)
		}

	if (sprite_index = spr_sheller_walk_left_begin) && (image_index >= image_number-1)
		{
			sprite_index = spr_sheller_walk_left_roll
			image_index = 0
			rolltimer = 1
		}
	else if (sprite_index = spr_sheller_walk_right_begin) && (image_index >= image_number-1)
		{
			sprite_index = spr_sheller_walk_right_roll
			image_index = 0
			rolltimer = 1
		}

	if (sprite_index = spr_sheller_walk_left_roll)
		{
			rolltimer -= 0.01;
			with(instance_place(x,y,obj_enemy_sheller_hitbox))
			{
				hspd = -2;
				DetermineMoveScript(hspd);
				
				var inst = instance_create_layer(other.x,id.bbox_bottom,layer_get_id("Inst_level_0"),obj_dashsmoke)
				with(inst)
				{
					sprite_index = spr_dasheffect_smoke1right
					image_speed = 1	
					image_angle = random_range(0,360)
				}
			}
		}
	else if (sprite_index = spr_sheller_walk_right_roll)
		{
			rolltimer -= 0.01;
			with(instance_place(x,y,obj_enemy_sheller_hitbox))
			{
				hspd = 2;
				DetermineMoveScript(hspd);
				
				var inst = instance_create_layer(other.x,id.bbox_bottom,layer_get_id("Inst_level_0"),obj_dashsmoke)
				with(inst)
				{
					sprite_index = spr_dasheffect_smoke1left
					image_speed = 1	
					image_angle = random_range(0,360)
				}
			}
		}

	if (rolltimer <= 0) && ((sprite_index = spr_sheller_walk_left_roll) or (sprite_index = spr_sheller_walk_right_roll))
	{
		rolltimer = 0;
		if (sprite_index = spr_sheller_walk_left_roll)
		{
			sprite_index = spr_sheller_walk_left_end
			image_index = 0
		}
		else if (sprite_index = spr_sheller_walk_right_roll)
		{
			sprite_index = spr_sheller_walk_right_end
			image_index = 0
		}
	}
	
	//rolling sfx
	if (rolltimer > 0) 
	&& ((sprite_index = spr_sheller_walk_left_roll) or (sprite_index = spr_sheller_walk_right_roll))
	&& (image_index = (image_number-1)/2) or (image_index = image_number-1)
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

	if (placefree1 > 0)
	{
		State_machine_switch_state(sheller_turning)
		placefree1 = 0;
	}


}

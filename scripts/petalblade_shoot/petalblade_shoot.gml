function petalblade_shoot() {
	var instsprites = self;

	if (inst_player > 0)
	{
		dir = point_direction(id.x,id.y,obj_player.x,obj_player.y)	
		dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
	}

	if (sprite_index = spr_petalblade_prep) && (image_index >= image_number-1)
	{
		sprite_index = spr_petalblade_spin
		inst1created = 0;
		timer2shoot = 1;
		
			//sfx
			if (!audio_is_playing(snd_grassrustle))
			{
				audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)	
			}
			else if (audio_is_playing(snd_grassrustle))
			{
				audio_stop_sound(snd_grassrustle)
				audio_play_sound(snd_grassrustle,1000,false,global.sfx_volume)	
			}
	}

	if (sprite_index = spr_petalblade_spin)
	{
		if (spawnerlimit < 3) && (!place_meeting(x,y,obj_enemy_petalblade_bullet))
		{
			var instbullet0 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_petalblade_bullet)
	
			with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_petalblade_blade;
	           
					image_angle = other.dir-180
					hspd = lengthdir_x(4,other.dir)
					vspd = lengthdir_y(4,other.dir)
			   
		            shootlimit = 1;		
				}
	        }
			spawnerlimit++
		}
	}

	if (image_index >= image_number-1) && (sprite_index = spr_petalblade_spin)
	{
		sprite_index = spr_petalblade_idle;	
		State_machine_switch_state(petalblade_idle)
	}


}

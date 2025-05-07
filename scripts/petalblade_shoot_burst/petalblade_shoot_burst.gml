function petalblade_shoot_burst() {
	var instsprites = self;

	if (inst_player > 0)
	{
		dir = random_range(0,360)	
		dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
	}

	if (sprite_index = spr_petalblade_prep_2) && (image_index >= image_number-1)
	{
		sprite_index = spr_petalblade_spin_2
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

	if (sprite_index = spr_petalblade_spin_2)
	{
	
		if (spawnerlimit < 10)
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
		inst1created = 0;
		timer2shoot = 1;
	}

	if (image_index >= image_number-1) && (sprite_index = spr_petalblade_spin_2)
	{
		sprite_index = spr_petalblade_idle;	
		State_machine_switch_state(petalblade_idle)
	}


}

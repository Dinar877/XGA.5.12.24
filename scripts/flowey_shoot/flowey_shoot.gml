function flowey_shoot() {
	dir = point_direction(id.x,id.y,obj_player.x,obj_player.y)	
	dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)

	if (sprite_index = spr_flowey_shoot) && (image_index < image_number-1) && (image_index >= 17)
	{
		if (!audio_is_playing(snd_swordswoosh))
		{
			snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd,0.6)
		}
	
		if (instance_number(obj_enemy_petalblade_bullet) < 2) && (!instance_place(x,y,obj_enemy_petalblade_bullet))
		{
			var instbullet0 = instance_create_layer(x,y-10,layer_get_id("Inst_doors"),obj_enemy_petalblade_bullet)
	
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
		
		}
	}

	if (sprite_index = spr_flowey_shoot) && (image_index >= image_number-1)
	{
		 sprite_index = spr_flowey_idle;
		 image_index = 0;
		 dist = 0
		 dir = 0
		 audio_stop_sound(snd_swordswoosh)
		 State_machine_switch_state(flowey_idle)
	}


}

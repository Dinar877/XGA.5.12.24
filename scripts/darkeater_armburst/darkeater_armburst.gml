function darkeater_armburst() {
	
	state1 = darkeater_armburst
	
	if (obj_darkeater_sprites.sprite_index != spr_darkeater_armburst_left) && (state = darkeater_armburst) && (facing = -1)
		{
			obj_darkeater_sprites.image_index = 0
			obj_darkeater_sprites.sprite_index = spr_darkeater_armburst_left;	
		}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_armburst_left) && (floor(obj_darkeater_sprites.image_index) >= obj_darkeater_sprites.image_number-1)
		{
			snd = -1
			instbullet0 = 0
			attack_state = 0;
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_left;	
			State_machine_switch_state(darkeater_idle);
			exit
		}

	if (obj_darkeater_sprites.sprite_index != spr_darkeater_armburst_right) && (state = darkeater_armburst) && (facing = 1)
		{
			obj_darkeater_sprites.image_index = 0
			obj_darkeater_sprites.sprite_index = spr_darkeater_armburst_right;	
		}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_armburst_right) && (floor(obj_darkeater_sprites.image_index) >= obj_darkeater_sprites.image_number-1)
		{
			snd = -1
			instbullet0 = 0
			attack_state = 0;
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_right;	
			State_machine_switch_state(darkeater_idle);
			exit
		}
	
	if (floor(obj_darkeater_sprites.image_index) >= 18) && (floor(obj_darkeater_sprites.image_index) < 19)
	&& ((obj_darkeater_sprites.sprite_index = spr_darkeater_armburst_right) or (obj_darkeater_sprites.sprite_index = spr_darkeater_armburst_left))
	{
		if (snd = -1)
		{
			audio_stop_sound(snd_beamexplosion1)
			audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		
			snd = audio_play_sound(snd_xga_armbust_fire2,1000,false,global.sfx_volume)
			audio_sound_gain(snd,0,1500)
		}
		
		if (instbullet0 <= 0)
			{
				if (facing < 0)
				{
					instance_create_layer(id.x-30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					instance_create_layer(id.x-30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					instance_create_layer(id.x-30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					instance_create_layer(id.x-30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					
					with(obj_xga_armburst_piece)
					{
						direction1 = -1	
					}
				}
				else if (facing > 0)
				{
					instance_create_layer(id.x+30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					instance_create_layer(id.x+30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					instance_create_layer(id.x+30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					instance_create_layer(id.x+30,id.y-20+6,layer_get_id("Inst_doors"),obj_xga_armburst_piece)
					
					with(obj_xga_armburst_piece)
					{
						direction1 = 1	
					}
				}
				
				instbullet0 = 1
			}	
	}



}

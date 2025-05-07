function firebug_shoot() {
	if (round(image_index) == 34)
	{
		if (snd = -1)
		{
			snd = audio_play_sound(snd_beamexplosion1,1001,false,global.sfx_volume)
			audio_sound_gain(snd,0,800)
		}
	
		if (instbullet0 <= 0)
		{
			if (facing < 0)
				{
					instbullet0 = instance_create_layer(id.x-23,id.y-4,layer_get_id("Inst_doors"),obj_enemy_firebug_fireball)
				
					var insty1 = instance_create_layer(id.x+30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
					var insty2 = instance_create_layer(id.x+30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
					var insty3 = instance_create_layer(id.x+30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
					var insty4 = instance_create_layer(id.x+30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
				
					with(insty1)
					{
						direction1 = 1	
					}
					with(insty2)
					{
						direction1 = 1	
					}
					with(insty3)
					{
						direction1 = 1	
					}
					with(insty4)
					{
						direction1 = 1	
					}
				}
			else if (facing > 0)
				{
					instbullet0 = instance_create_layer(id.x+20,id.y-4,layer_get_id("Inst_doors"),obj_enemy_firebug_fireball)
					var insty1 = instance_create_layer(id.x-30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
					var insty2 = instance_create_layer(id.x-30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
					var insty3 = instance_create_layer(id.x-30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
					var insty4 = instance_create_layer(id.x-30,id.y-5,layer_get_id("Inst_doors"),obj_fireball_spit)
				
					with(insty1)
					{
						direction1 = -1	
					}
					with(insty2)
					{
						direction1 = -1	
					}
					with(insty3)
					{
						direction1 = -1	
					}
					with(insty4)
					{
						direction1 = -1	
					}
				}
		}
	
			with(instbullet0)
	        {	   
				hspd = 5*(other.facing)
				vspd = 0
		        shootlimit = 1;	
			}
	}

	if (image_index >= image_number-1) or (player_inrange = 0)
	{
		instbullet0 = 0
		snd = -1
		if (sprite_index = spr_firebug_shoot_left)
		{
			sprite_index = spr_firebug_idle_left
		}
		else if (sprite_index = spr_firebug_shoot_right)
		{
			sprite_index = spr_firebug_idle_right
		}
	
		State_machine_switch_state(firebug_idle)
	}
}

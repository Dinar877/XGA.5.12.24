function treespike_shoot_burst() {
	var instsprites = self;

	if (round(image_index) == 21) && (snd = -1)
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
		audio_sound_gain(snd,0,1000)
	}

	if (sprite_index = spr_treespike_burst) && (image_index == 21)
	{
		var instbullet0 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
	
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            image_angle -= 45;
					sprite_index = spr_treespike_bullet;
		            hspd = -6;
		            vspd = -6;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
		            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
					var instbullet3 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
		            var instbullet4 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
					var instbullet5 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
				
				
					with(instbullet5)
					{
						sprite_index = spr_treespike_bullet_right;
						image_angle += 45;
			            hspd = 6;
			            vspd = -6;
			            shootlimit = 1;
					}
					with(instbullet3)
					{
						sprite_index = spr_treespike_bullet_right;
						image_angle += 60;
						hspd = 6;
						vspd = -8;
						shootlimit = 1;
					}
					with(instbullet4)
					{
						sprite_index = spr_treespike_bullet_right;
						image_angle += 80;
			            hspd = 6;
			            vspd = -10;
			            shootlimit = 1;
					}
				
				
					with(instbullet1)
					{
						sprite_index = spr_treespike_bullet;
						image_angle -= 60;
						hspd = -6;
						vspd = -8;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_treespike_bullet;
						image_angle -= 80;
			            hspd = -6;
			            vspd = -10;
			            shootlimit = 1;
					}
			
				}
	        }
		inst1created = 0;
	}


	if (image_index >= image_number-1)
	{
		snd = -1
		sprite_index = spr_treespike_idle;	
		State_machine_switch_state(treespike_idle)
	}


}

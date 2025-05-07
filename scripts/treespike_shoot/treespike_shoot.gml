function treespike_shoot() {
	var instsprites = self;

	if (round(image_index) == 24) && (snd = -1)
	{
		snd = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
		audio_sound_set_track_position(snd,0.6)
		audio_sound_gain(snd,0,1000)
	}

	if (sprite_index = spr_treespike_hurl_left) && (floor(image_index) == 24)
	{
		var instbullet0 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
	
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_treespike_bullet;
		            hspd = -10;
		            vspd = 0;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
		            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
					with(instbullet1)
					{
						sprite_index = spr_treespike_bullet;
						image_angle -= 45;
						hspd = -2;
						vspd = -8;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_treespike_bullet;
						image_angle -= 90;
			            hspd = -0;
			            vspd = -10;
			            shootlimit = 1;
					}
			
				}
	        }
		inst1created = 0;
		timer2shoot = 1;
	}
	else if (sprite_index = spr_treespike_hurl_right) && (floor(image_index) == 24)
	{
		var instbullet0 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_treespike_bullet_right;
		            hspd = 10;
		            vspd = 0;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
		            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y-8,layer_get_id("Inst_doors"),obj_enemy_treespike_bullet)
					with(instbullet1)
					{
						sprite_index = spr_treespike_bullet_right;
						image_angle += 45;
						hspd = 2;
						vspd = -8;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_treespike_bullet_right;
						image_angle += 90;
			            hspd = 0;
			            vspd = -10;
			            shootlimit = 1;
					}
			
				}
	        }
		inst1created = 0;
		timer2shoot = 1;
	}

	if (image_index >= image_number-1)
	{
		snd = -1
		sprite_index = spr_treespike_idle;	
		State_machine_switch_state(treespike_idle)
	}


}

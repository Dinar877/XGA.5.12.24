function spider_shooting() {
	if (inst > 0) && (obj_boss_spider_hitbox.state == (legs_idle) or (legs_walking))
	{
		var instsprites = self;
		
		audio_stop_sound(snd_beam2charged)
		var sndy1 = audio_play_sound(snd_beam2charged,1000,false,global.sfx_volume)
		audio_sound_gain(sndy1,0,5000)

		if (sprite_index = spr_boss_spider_eye_idle_left)
		{
			var instbullet0 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
	
			with(instbullet0)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bulletSpread_charge2_left;
			            hspd = -6;
			            vspd = 0;
			            shootlimit = 1;
						var instbullet1 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
			            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
						var instbullet3 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
			            var instbullet4 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
						with(instbullet1)
						{
							sprite_index = spr_bulletSpread_charge2_left;
							hspd = -6;
							vspd = -2;
							shootlimit = 1;
						}
						with(instbullet2)
						{
							sprite_index = spr_bulletSpread_charge2_left;
				            hspd = -6;
				            vspd = 2;
				            shootlimit = 1;
						}
						with(instbullet3)
						{
							sprite_index = spr_bulletSpread_charge2_left;
							hspd = -6;
							vspd = -5;
							shootlimit = 1;
						}
						with(instbullet4)
						{
							sprite_index = spr_bulletSpread_charge2_left;
				            hspd = -6;
				            vspd = 5;
				            shootlimit = 1;
						}
			
					}
		        }
			inst1created = 0;
			timer2shoot = 1;
		}
		else if (sprite_index = spr_boss_spider_eye_idle_right)
		{
			var instbullet0 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
			with(instbullet0)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bulletSpread_charge2_left;
			            hspd = 6;
			            vspd = 0;
			            shootlimit = 1;
						var instbullet1 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
			            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
						var instbullet3 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
			            var instbullet4 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
						with(instbullet1)
						{
							sprite_index = spr_bulletSpread_charge2_left;
							hspd = 6;
							vspd = -2;
							shootlimit = 1;
						}
						with(instbullet2)
						{
							sprite_index = spr_bulletSpread_charge2_left;
				            hspd = 6;
				            vspd = 2;
				            shootlimit = 1;
						}
						with(instbullet3)
						{
							sprite_index = spr_bulletSpread_charge2_left;
							hspd = 6;
							vspd = -5;
							shootlimit = 1;
						}
						with(instbullet4)
						{
							sprite_index = spr_bulletSpread_charge2_left;
				            hspd = 6;
				            vspd = 5;
				            shootlimit = 1;
						}
			
					}
		        }
		inst1created = 0;
		timer2shoot = 0;
		}
		inst = 0;
	}

	inst1 += 0.05;

	if (inst1 >= 1)
	{
		timer2shoot = 0;
		
		audio_stop_sound(snd_electricity)
		audio_stop_sound(snd_beam2charged)
		
		State_machine_switch_state(spider_idle)	
		with(obj_boss_spider_hitbox)
		{
			State_machine_switch_state(legs_idle)	
		}
		inst1 = 0;
	}


}

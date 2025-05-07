function eyebot_shoot() {
	var instsprites = self;

	if (sprite_index = spr_eyebot_idle_left)
	{
		var instbullet0 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
	
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_bulletSpread_charge1_left;
		            hspd = -10;
		            vspd = 0;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge1_left;
						hspd = -10;
						vspd = -2;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge1_left;
			            hspd = -10;
			            vspd = 2;
			            shootlimit = 1;
					}
			
				}
	        }
		inst1created = 0;
		timer2shoot = 1;
		State_machine_switch_state(eyebot_idle);
	}
	else if (sprite_index = spr_eyebot_idle_right)
	{
		var instbullet0 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_bulletSpread_charge1_left;
		            hspd = 10;
		            vspd = 0;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		            var instbullet2 = instance_create_layer(instsprites.x,instsprites.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge1_left;
						hspd = 10;
						vspd = -2;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge1_left;
			            hspd = 10;
			            vspd = 2;
			            shootlimit = 1;
					}
			
				}
	        }
		inst1created = 0;
		timer2shoot = 1;
		State_machine_switch_state(eyebot_idle);
	}



}

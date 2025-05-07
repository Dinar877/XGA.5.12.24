function eyebot_charging() {
	if  (global.invisibility = 1) or (!place_meeting(x,y,obj_camera))
	{
		timer2shoot = 1;
		if ((inst1) > 0)
		{
			with(inst1)
			{
				instance_destroy()
			}	
			inst1 = 0;
		}
		State_machine_switch_state(eyebot_idle)
	}

	if (inst1 <= 0)
	{
		inst1 = instance_create_layer(id.x-7,id.y-3,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bulletcreator)
		with(inst1)
		{
			sprite_index = spr_chargeshot
		}
	}
	else if (inst1 > 0)
	{

		with(inst1)
		{
			timer += (1/room_speed)*2;
			if (timer >= 5)
			{
				sprite_index = spr_enemy_eyebot_shoteffect
		
				if (sprite_index = spr_enemy_eyebot_shoteffect) && (image_index > image_number-1)
				{
					with(instance_place(id.x,id.y,obj_enemy_eyebot_spread_sprites))
					{
						inst1 = 0;
						timer2shoot = 1
						State_machine_switch_state(eyebot_shoot)	
					}
					instance_destroy();	
				}
			}
		}

	}

	if (obj_player.x > self.x) && (sprite_index = spr_eyebot_idle_left) && (global.invisibility = 0) && (collision_circle(id.x,id.y,120,obj_player,false,false))
	{
		State_machine_switch_state(eyebot_turning);
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_eyebot_idle_right) && (global.invisibility = 0) && (collision_circle(id.x,id.y,120,obj_player,false,false))
	{
		State_machine_switch_state(eyebot_turning);
	}


}

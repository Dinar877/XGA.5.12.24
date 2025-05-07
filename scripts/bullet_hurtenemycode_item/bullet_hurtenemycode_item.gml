function bullet_hurtenemycode_item() {
	var random_health_pickup1 = round(random_range(0,10))
	var random_health_pickup2 = round(random_range(0,10))

	if (random_health_pickup1 <= 8) && (random_health_pickup1 > 4)
		{
			instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health2);	
		}
	else if (random_health_pickup1 > 8)
		{
			instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health1);	
		}
	
	if (random_health_pickup2 <= 8) && (random_health_pickup2 > 4)
		{
			instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health2);	
		}
	else if (random_health_pickup2 > 8)
		{
			instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health1);	
		}
	
		var random_ability_pickup1 = round(random_range(0,10))
		var random_ability_pickup2 = round(random_range(0,10))
		var random_ability_pickup3 = round(random_range(0,10))
		var random_ability_pickup4 = round(random_range(0,10))
	
		if (global.nanoshield_available > 0)
		{
			if (random_ability_pickup1 > 6) && (random_ability_pickup1 <= 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo1_spread);	
			}
			else if (random_ability_pickup1 > 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo2_spread);	
			}
		}
	
		if (global.invisibility_available > 0)
		{
			if (random_ability_pickup2 > 6) && (random_ability_pickup2 <= 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo1_charge);	
			}
			else if (random_ability_pickup2 > 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo2_charge);	
			}
		}
	
		if (global.nuclearblast_available > 0)
		{
			if (random_ability_pickup3 > 6) && (random_ability_pickup3 <= 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo1_burn);	
			}
			else if (random_ability_pickup3 > 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo2_burn);	
			}
		}
	
		if (global.shockwave_available > 0)
		{
			if (random_ability_pickup4 > 6) && (random_ability_pickup4 <= 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo1_shock);	
			}
			else if (random_ability_pickup4 > 8)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo2_shock);	
			}
		}
	
		instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);


}

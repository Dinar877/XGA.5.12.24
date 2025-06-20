function bullet_hurtenemycode_charge_noeffect(argument0) {
	with((instance_place(id.x,id.y,obj_bullet)))
	{
		if (enemy_contact <= 0)
		{
			if (global.beam_shield_available > 0) && (charge > 0)
			{
				with(argument0)
				{
					hp -= 30
				}
			}
			else if (global.beam_shield_available > 0) && (charge <= 0)
			{
				sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
			}
			else if (global.beam_homing_available > 0) && (charge > 0)
			{
				with(argument0)
				{
					hp -= 25
				}
			}
			else if (global.beam_homing_available > 0) && (charge <= 0)
			{
				sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
			}
			else if (global.beam_burn_available > 0) && (charge > 0)
			{
				with(argument0)
				{
					hp -= 20
				}
			}
			else if (global.beam_burn_available > 0) && (charge <= 0)
			{
				sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
			}
			else if (global.beam_spread_available > 0) && (charge > 0)
			{
				with(argument0)
				{
					hp -= 15
				}
			}
			else if (global.beam_spread_available > 0) && (charge <= 0)
			{
				sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
			}
			else if (charge > 0)
			{
				with(argument0)
				{
					hp -= 10
				}
			}
			else if (charge <= 0)
			{
				sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
			}
		
			enemy_contact = 1;
	
		}
			hspd = 0;
	        vspd = 0;
			id.depth = layer_get_depth("Inst_scrn")
        
	        var xmin1 = x;
	        var xmax1 = xmin1 + (sprite_get_width(spr_fly)/2);
	        var ymin1 = y;
	        var ymax1 = ymin1 + (sprite_get_height(spr_fly)/2);
	        if (image_index = 0) && (sprite_index != -1)
	        {
		        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit);
		        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
		        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
	        }
		
		
			if (global.beam_burn_available = 0) && (enemy_nohit <= 0)
			{
				if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
		        {
			        sprite_index = spr_bullet_hit;
			        started1 = 1;
		        }
		        if (global.explosiveammo = 1) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
		        {
			        sprite_index = spr_explosion1;
			        started1 = 1;
		        }
		        if (global.upgrade_charge = 1) && (global.charge_shot = 0) && (started1 = 0)
		        {
			        sprite_index = spr_charge1_bullet_hit;
			        started1 = 1;
		        }
		        if (global.upgrade_charge = 1) && (global.charge_shot = 1) && (started1 = 0)
		        {
			        sprite_index = spr_charge2_bullet_hit;
			        started1 = 1;
		        }
			}
		
			if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0) && (enemy_nohit <= 0)
			{
				sprite_index = spr_explosion5;
		        started1 = 1;	
			}
			else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0) && (enemy_nohit <= 0)
			{
				sprite_index = spr_explosion6;
		        started1 = 1;	
			}
		
			if (enemy_nohit > 0)
			{
				audio_stop_sound(snd_beam1_noeffect)
				audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume)
				hspd = 0;
		        vspd = 0;
				sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;	
		        enemy_contact = 1;	
			}
	}


}

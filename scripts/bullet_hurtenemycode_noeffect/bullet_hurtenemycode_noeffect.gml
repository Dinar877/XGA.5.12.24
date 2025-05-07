function bullet_hurtenemycode_noeffect() {
	with((instance_place(id.x,id.y,obj_bullet)))
	{
		if (enemy_contact <= 0)
		{
			enemy_contact = 1;
			enemy_nohit = 1
		}
			hspd = 0;
	        vspd = 0;
		
			id.depth = layer_get_depth("Inst_scrn")
		
			if (global.beam_burn_available = 0) && (enemy_nohit <= 0)
			{
				if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
		        {
		        sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
		        }
		        if (global.explosiveammo = 1) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
		        {
		        sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
		        }
		        if (global.upgrade_charge = 1) && (global.charge_shot = 0) && (started1 = 0)
		        {
		        sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
		        }
		        if (global.upgrade_charge = 1) && (global.charge_shot = 1) && (started1 = 0)
		        {
		        sprite_index = spr_bullet_hit_noeffect;
		        started1 = 1;
		        }
			}
		
			if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0) && (enemy_nohit <= 0)
			{
			sprite_index = spr_bullet_hit_noeffect;
	        started1 = 1;	
			}
			else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0) && (enemy_nohit <= 0)
			{
			sprite_index = spr_bullet_hit_noeffect;
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

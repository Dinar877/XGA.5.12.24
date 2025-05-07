/// @description Insert description here
// You can write your code in this editor
if (image_alpha <= 0)
	{
		image_alpha = 1.0;
		emitter_vol = 1.0
	}
	
if (image_alpha > 0)
	{
		image_alpha -= 0.025;
		timer1 += 0.008;
		emitter_vol -= 0.025;
		
	}
if (image_alpha <= 0) && (timer1 >= 1)
	{
		with(object_player2_0_sprites)
		{
			image_speed = 1;	
		}
		if (spawnerID > -1)
		{
			with(spawnerID)
			{
				image_speed = 1;
				warning = 1;
				
				if (variable_instance_exists(self, "inst"))
				{
					if (inst > 0)
					{
						if (variable_instance_exists(self, "warning"))
						{
							inst.warning = 1	
						}
						
						inst.image_speed = 1
					}
				}
			}
		}
		
		//open boss blockers
		/*
		if (instance_exists(obj_corelock_boss))
		{
			with(obj_corelock_boss)
			{
				switch1 = 1	
			}
		}
		*/
		
		//for Crane boss
		#region
		if (instance_exists(obj_boss_Obox))
		{
			with(obj_boss_Obox)
			{
				warning = 1
				image_speed = 1
			}
		}
		if (instance_exists(obj_boss_Greenbox))
		{
			with(obj_boss_Greenbox)
			{
				warning = 1
				image_speed = 1
			}
		}
		if (instance_exists(obj_boss_Greybox_inside))
		{
			with(obj_boss_Greybox_inside)
			{
				warning = 1
				image_speed = 1
			}
		}
		if (instance_exists(obj_boss_Greybox_outside))
		{
			with(obj_boss_Greybox_outside)
			{
				warning = 1
				image_speed = 1
			}
		}
		#endregion
		
		
		//OST
		global.boss_warning = 0
		
		if (spawnerID = obj_boss_darkeater_stage1_hitbox) or (spawnerID = obj_boss_bigsnail_hitbox)
		{
			Music_loop(ost_boss_0_remastered, 0.101, 219.653);
		}
		else if (spawnerID = obj_boss_bugspider_hitbox) or (spawnerID = obj_boss_darklord_hitbox)
		{
			Music_loop(ost_boss_1_remastered, 0, 0);
		}
		else if (spawnerID = obj_boss_gorilla_hitbox) or (spawnerID = obj_boss_flowey)
		{
			Music_loop(ost_boss_2_remastered, 0.113, 90.098);
		}
		else if (spawnerID = obj_boss_turtle_hitbox) or (spawnerID = obj_boss_Greybox_inside)
		{
			Music_loop(ost_boss_3_remastered, 0.074, 109.82)
		}
		else if (spawnerID = obj_boss_kingstalker_hitbox) or (spawnerID = obj_boss_spider_legs)
		{
			Music_loop(ost_boss_4_remastered, 0.086, 145.586)
		}
		else if (spawnerID = obj_darkeater_hitbox)   //XGA
		{
			audio_play_sound(ost_xga_chasemusic, 1000, true);
		}
		
		instance_destroy()
	}


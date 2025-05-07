// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function biocorp_soldier_shoot(){
	
	if (sprite_index = spr_biocorp_soldier_shoot_left) && (round(image_index) == 0)
	{
		var instbullet0 = instance_create_layer(x-10,y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		
		var decider = round(random_range(0,2))
		if (decider == 0)
				{
					var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)	
				}
		else if (decider == 1)
				{
					var snd = audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)	
				}
		else if (decider == 2)
				{
					var snd = audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)	
				}	
		//snd = audio_sound_gain(snd,0.5,0)	
	
	
	
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_saw_bullet;
		            hspd = -5;
		            vspd = 0;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(x-10,y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		            var instbullet2 = instance_create_layer(x-10,y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
					with(instbullet1)
					{
						sprite_index = spr_saw_bullet;
						hspd = -5;
						vspd = -1;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_saw_bullet;
			            hspd = -5;
			            vspd = 1;
			            shootlimit = 1;
					}
			
				}
	        }
	}
	else if (sprite_index = spr_biocorp_soldier_shoot_right) && (round(image_index) == 0)
	{
		var instbullet0 = instance_create_layer(x+10,y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		
		var decider = round(random_range(0,2))
		if (decider == 0)
				{
					var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)	
				}
		else if (decider == 1)
				{
					var snd = audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)	
				}
		else if (decider == 2)
				{
					var snd = audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)	
				}	
		//snd = audio_sound_gain(snd,0.5,0)	
		
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_saw_bullet;
		            hspd = 5;
		            vspd = 0;
		            shootlimit = 1;
					var instbullet1 = instance_create_layer(x+10,y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
		            var instbullet2 = instance_create_layer(x+10,y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
					with(instbullet1)
					{
						sprite_index = spr_saw_bullet;
						hspd = 5;
						vspd = -1;
						shootlimit = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_saw_bullet;
			            hspd = 5;
			            vspd = 1;
			            shootlimit = 1;
					}
			
				}
	        }
	}
	
	if (image_index >= image_number-1)
	{
		State_machine_switch_state(biocorp_soldier_stand)	
		
		if (facing = 1)
		{
			sprite_index = spr_biocorp_soldier_stand_right	
		}
		else if (facing = -1)
		{
			sprite_index = spr_biocorp_soldier_stand_left	
		}
		
		exit
	}

}
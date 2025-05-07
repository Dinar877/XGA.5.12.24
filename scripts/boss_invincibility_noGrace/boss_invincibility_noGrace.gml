// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_invincibility_noGrace(){
	
	if (variable_instance_exists(self,"warning")) && (variable_instance_exists(self,"enemy_contact"))
	{
		if (warning = 1)
		{
			if (instance_place(id.x,id.y,obj_bullet))
			{
				with(instance_place(id.x,id.y,obj_bullet))
				{
					if (enemy_contact <= 0)
					{
						//play hit sfx if any
						if (variable_instance_exists((instance_place(id.x,id.y,obj_link_enemies)),"metal"))
						{
							with(instance_place(id.x,id.y,obj_link_enemies))
							{
								if (metal = 1)
								{
									if (!audio_is_playing(snd_metalbang))
									{
										snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
										audio_sound_gain(snd,0,1500)
										audio_sound_pitch(snd, random_range(0.95,1.05))
									}
									else if (audio_is_playing(snd_metalbang))
									{
										audio_stop_sound(snd_metalbang)
										snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
										audio_sound_gain(snd,0,1500)
										audio_sound_pitch(snd, random_range(0.95,1.05))
									}
								}
							}
						}
			
						//enemy fade hit effect
						with(other)
						{
							if (enemy_hurt < 0.9)
							{
								enemy_hurt = 0.9;
								enemy_almost_hurt = 0;
							}	
						}
			
						//decrease hp
						if (global.beam_shield_available > 0) && (charge > 0) //shield charged
						{
							with(argument0)
							{
								hp -= 12
							}
						}
						else if (global.beam_shield_available > 0) && (charge <= 0) //shield uncharged
						{
							with(argument0)
							{
								hp -= 5
							}
						}
						else if (global.beam_homing_available > 0) && (charge > 0) //reflect charged
						{
							with(argument0)
							{
								hp -= 10
							}
						}
						else if (global.beam_homing_available > 0) && (charge <= 0) //reflect uncharged
						{
							with(argument0)
							{
								hp -= 4
							}
						}
						else if (global.beam_burn_available > 0) && (charge > 0) //impact charged
						{
							with(argument0)
							{
								hp -= 9
							}
						}
						else if (global.beam_burn_available > 0) && (charge <= 0) //impact uncharged
						{
							with(argument0)
							{
								hp -= 3
							}
						}
						else if (global.beam_spread_available > 0) && (charge > 0) //spread charged
						{
							with(argument0)
							{
								hp -= 8
							}
						}
						else if (global.beam_spread_available > 0) && (charge <= 0) //spread uncharged
						{
							with(argument0)
							{
								hp -= 2
							}
						}
						else if (charge > 0) //normal charged
						{
							with(argument0)
							{
								hp -= 7
							}
						}
						else if (charge <= 0) //normal uncharged
						{
							with(argument0)
							{
								hp -= 1
							}
						}
		
						enemy_contact = 1;
	
					}
						hspd = 0;
				        vspd = 0;
        
				        var xmin1 = x;
				        var xmax1 = xmin1 + (sprite_get_width(spr_fly)/2);
				        var ymin1 = y;
				        var ymax1 = ymin1 + (sprite_get_height(spr_fly)/2);
				        if (image_index = 0) && (sprite_index != -1)
				        {
					        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit);
					        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
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
			else if (instance_place(x,y,obj_player_sword_hitbox))
			{
				sword_hurtenemycode();	
			}
		}
	}
}
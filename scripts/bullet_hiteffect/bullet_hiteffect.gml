function bullet_hiteffect(){
	
	//decides what hit effect to use (excluding 'no hit' effects)
	if (global.beam_shield_available = 0)
		{
			if (global.beam_burn_available = 0) && (global.beam_spread_available = 0) && (global.beam_homing_available = 0) && (global.beam_shield_available = 0)
			{
				if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
			    {
				    sprite_index = spr_bullet_hit;
				    started1 = 1;
			    }
			    if (global.upgrade_charge = 1) && (charge = 0) && (started1 = 0)
			    {
				    sprite_index = spr_charge1_bullet_hit;
				    started1 = 1;
			    }
			    if (global.upgrade_charge = 1) && (charge = 1) && (started1 = 0)
			    {
				    sprite_index = spr_charge2_bullet_hit;
				    started1 = 1;
			    }
			}
			if (global.beam_spread_available = 1) && (charge = 0) && (started1 = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
			{
				sprite_index = spr_bullet_hit_spread;
				image_angle = round(random_range(image_angle = 0,image_angle = 360));
				started1 = 1;	
			}
			else if (global.beam_spread_available = 1) && (charge = 1) && (started1 = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
			{
				sprite_index = spr_bullet_hit_spread;
				started1 = 1;	
			}
			if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0)
			{
				sprite_index = spr_explosion5;
				image_angle = random_range(0,360)
				started1 = 1;	
			}
			else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0)
			{
				sprite_index = spr_explosion6;
				image_angle = random_range(0,360)
				started1 = 1;	
			}
			
			if (charge = 0) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 1)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_explosion5_green;
				image_angle = random_range(0,360)
				started1 = 1;	
			}
			else if (charge = 1) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 1)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_explosion6_green;
				image_angle = random_range(0,360)
				started1 = 1;	
			}
			if (charge = 0) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 0)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_bullet_hit_homing;
				started1 = 1;	
			}
			else if (charge = 1) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 0)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_bullet_hit_homing;
				started1 = 1;	
			}
		}
		else if (global.beam_shield_available = 1)
		{
			if (started1 = 0) && (global.beam_burn_available = 0)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_bullet_hit_shield;
				started1 = 1;	
				audio_stop_sound(snd_beam2_noeffect)
				audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
			}	
			else if (started1 = 0) && (global.beam_burn_available = 1) && (charge = 0)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_explosion5_grey;
				image_angle = random_range(0,360)
				started1 = 1;	
				audio_stop_sound(snd_beamexplosion)
				audio_stop_sound(snd_beamexplosion1)
				audio_stop_sound(snd_beamexplosion2)
				var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
			}
			else if (started1 = 0) && (global.beam_burn_available = 1) && (charge = 1)
			{
				x += hspd/2;
				y += vspd/2;
				hspd = 0;
				vspd = 0;
				sprite_index = spr_explosion6_grey;
				image_angle = random_range(0,360)
				started1 = 1;	
				audio_stop_sound(snd_beamexplosion)
				audio_stop_sound(snd_beamexplosion1)
				audio_stop_sound(snd_beamexplosion2)
				var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
			}	
		}
}
function spikebot_shoot() {
	if (round(image_index) == 31)
	{
		if (snd = -1)
		{
			snd = audio_play_sound(snd_beam2uncharged,1000,false,global.sfx_volume)
			audio_sound_gain(snd,0,600)
		}
	
		if (instbullet0 <= 0)
		{
			if (facing < 0)
				{
					instbullet0 = instance_create_layer(id.x-19,id.y-16,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
				}
			else if (facing > 0)
				{
					instbullet0 = instance_create_layer(id.x+18,id.y-16,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
				}
		}
	
			with(instbullet0)
	        {	   
				hspd = 5*(other.facing)
				vspd = 0
			
				if (other.facing < 0)
				{
					sprite_index = spr_bulletSpread_charge1_left
				}
				else if (other.facing > 0)
				{
					sprite_index = spr_bulletSpread_charge1_right
				}
		        shootlimit = 1;	
			}
	}

	if (image_index >= image_number-1)
	{
		instbullet0 = 0
		snd = -1
		if (sprite_index = spr_spikebot_shoot_left)
		{
			sprite_index = spr_spikebot_idle_left
		}
		else if (sprite_index = spr_spikebot_shoot_right)
		{
			sprite_index = spr_spikebot_idle_right
		}
	
		State_machine_switch_state(spikebot_idle)
	}


}

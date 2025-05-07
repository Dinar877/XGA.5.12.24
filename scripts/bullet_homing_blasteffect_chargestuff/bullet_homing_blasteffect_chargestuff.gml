function bullet_homing_blasteffect_chargestuff() {
	  with(obj_blast_effect)
	 {
	 if (global.shoot = 1) && (global.beam_homing_available = 1)
	 {
	 with (object_player2_0_sprites)
			    {
			        if (sprite_index = spr_run_right)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_right;
			            }
			        }
			        if (sprite_index = spr_run_left1)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_left;
			            }
			        }
        
        
        
			        if (sprite_index = spr_run_upright)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_upright;
			            }
			        }
			        if (sprite_index = spr_run_upleft)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_upleft;
			            }
			        }
        
        
        
			        if (sprite_index = spr_run_trueupright)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_up;
			            }
			        }
			        if (sprite_index = spr_run_trueupleft)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_up;
			            }
			        }
        
        
        
			        if (sprite_index = spr_run_downright)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_downright;
			            }
			        }
			        if (sprite_index = spr_run_downleft)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_HOMING_uncharged_blast_downleft;
			            }
			        }
			    }
			if (image_index >= image_number-1) && (global.charging = 0) && (sprite_index != -1) && (global.charge_shot = 0) && (fully_charged = 0)
			{
		    image_speed = 0; 
		    image_alpha = 0;
		    image_index = 0;
			global.shoot = 0;
			}
	 }

	if (global.charging = 1) && (fully_charged = 0) && (started_charging = 0) && (global.shoot = 0)
		{
		    image_index = 0;
		    sprite_index = spr_HOMING_charging_begin;
		    image_speed = 0.5;
		    started_charging = 1;
			audio_play_sound(snd_newbeam_chargeing1,1,false,global.sfx_volume)
		}
	else if (global.charging = 1) && (fully_charged = 0) && (started_charging = 1) && (global.shoot = 0)
		{
		    sprite_index = spr_HOMING_charging_begin;
		    image_speed = 0.5;
		}
	if (global.charging = 1) && (fully_charged = 1) && (started_charging = 1) && (global.shoot = 0)
		{
		    sprite_index = spr_HOMING_charging_fullycharged;
		    image_speed = 1;
		    fully_charged = 1;
		    global.charge_ready = 1;
			audio_stop_sound(snd_newbeam_chargeing1)
			if (!audio_is_playing(snd_newbeam_chargeing2))
			{
				audio_play_sound(snd_newbeam_chargeing2,1,true)
			}
		}

	if (global.charging = 0) && (fully_charged = 1) && (started_charging = 1) && (global.shoot = 0)
		{
		    fully_charged = 0;
			timer_charging = 0;
			started_charging = 0;
			audio_stop_sound(snd_newbeam_chargeing2)
			audio_stop_sound(snd_newbeam_chargeing1)
		}
	else if (global.charging = 0) && (global.shoot = 0)
		{
			fully_charged = 0;
			timer_charging = 0;
			started_charging = 0;
			audio_stop_sound(snd_newbeam_chargeing2)
			audio_stop_sound(snd_newbeam_chargeing1)
		}

	if (sprite_index = spr_HOMING_charging_begin) && (started_charging = 1) && (timer_charging < charge_time-global.charge_booster)
		{
		    timer_charging += 1/60;
		}
	if (sprite_index = spr_HOMING_charging_begin) && (image_index == image_number - 1) && (started_charging = 1) && (timer_charging >= charge_time-global.charge_booster)
		{
		    fully_charged = 1;
		}
	 }


}

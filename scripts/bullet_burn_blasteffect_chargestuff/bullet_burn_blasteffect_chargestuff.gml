function bullet_burn_blasteffect_chargestuff() {
	 with(obj_blast_effect)
	 {
	if (global.shoot = 1) && (global.beam_burn_available = 1)
	 {
	 with (object_player2_0_sprites)
			    {
			        if (sprite_index = spr_run_right)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotright;
			            }
			        }
			        if (sprite_index = spr_run_left1)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotleft;
			            }
			        }
        
        
        
			        if (sprite_index = spr_run_upright)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotupright;
			            }
			        }
			        if (sprite_index = spr_run_upleft)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotupleft;
			            }
			        }
        
        
        
			        if (sprite_index = spr_run_trueupright)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotup;
			            }
			        }
			        if (sprite_index = spr_run_trueupleft)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotup;
			            }
			        }
        
        
        
			        if (sprite_index = spr_run_downright)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotdownright;
			            }
			        }
			        if (sprite_index = spr_run_downleft)
			        {
			            with(obj_blast_effect)
			            {
			                sprite_index = spr_BURN_shotdownleft;
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
		    sprite_index = spr_BURN_begincharge1;
		    image_speed = 0.5;
		    started_charging = 1;
			audio_play_sound(snd_newbeam_chargeing1,1,false,global.sfx_volume)
		}
	else if (global.charging = 1) && (fully_charged = 0) && (started_charging = 1) && (global.shoot = 0)
		{
		    sprite_index = spr_BURN_begincharge1;
		    image_speed = 0.5;
		}
	if (global.charging = 1) && (fully_charged = 1) && (started_charging = 1) && (global.shoot = 0)
		{
		    sprite_index = spr_BURN_begincharge2;
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

	if (sprite_index = spr_BURN_begincharge1) && (started_charging = 1) && (timer_charging < charge_time-global.charge_booster)
		{
		    timer_charging += 1/60;
		}
	if (sprite_index = spr_BURN_begincharge1) && (image_index == image_number - 1) && (started_charging = 1) && (timer_charging >= charge_time-global.charge_booster)
		{
		    fully_charged = 1;
		}
	 }


}

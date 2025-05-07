if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.saving = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.room_transition_down = 1) or (global.room_transition_up = 1)
or (!instance_exists(obj_player))
{
	exit;	
}

//get gamepad variables
Gamepad_variables()




//instacharge upgrade
if (global.shoot_instacharge_upgrade = 1) 
&& (global.upgrade_charge = 1)
&& (global.shoot = 1) && (obj_player.shoot_pressed)
{
	global.charge_ready = 1;
	global.charging = 0;
	global.charge_shot = 1;
	image_speed = 0; 
    image_alpha = 0;
    image_index = 0;
}



//charging code-turn off when not holding down 'shoot'
if (!shoot) && (!shoot_pressed)
&& (global.shoot == 0) && (global.upgrade_charge == 1)
&& (global.charging == 1) && (global.charge_ready == 0) && (global.charge_shot == 0)
{
	image_speed = 0; 
    image_alpha = 0;
    image_index = 0;
	global.charge_ready = 0;
	global.charge_shot = 0;
	global.charging = 0;
}

//hide charging ball effect when it's not supposed to be visible
if (obj_player.state != Shooting) && (obj_player.state != Crouch_shoot) && (obj_player.state != Fall_shoot) && (obj_player.state != Shoot_hang)
&& (obj_player.state != Move) && (global.charging = 0) && (global.charge_ready = 0) //no charging and no shooting charged shot
{
	pause = 1;
	image_alpha = 0;
}
else if ((global.charging > 0) or (global.charge_ready > 0)) 
&& (obj_player.state != Shooting) && (obj_player.state != Crouch_shoot) && (obj_player.state != Fall_shoot) && (obj_player.state != Shoot_hang)
&& (obj_player.state != Move) 
&& (obj_player.state != Idle) && (obj_player.state != Idle_landing) 
&& (obj_player.state != Crouching) && (obj_player.state != Ledge_grab) 
&& (obj_player.state != Falling) 
&& (obj_player.state != Jumping) 
&& (obj_player.state != Jump_after_Dashing2) 
&& (obj_player.state != Jump_after_Dashing_airdash) 
&& (obj_player.state != Jump_after_Dashing_hydrodash) 
&& (obj_player.state != Jump_after_Dashing_hydrodash)   
&& (global.jumpingdm == 0) //charging but must not be visible
{
	pause = 1;
	image_alpha = 0;
}
else if (global.shoot = 0) && (global.charge_shot = 0) && (global.charging = 0) && (global.charge_ready = 0) //no shooting
{
	pause = 1;
	image_alpha = 0;
}
else if ((obj_player.state == Ledge_grab) or (obj_player.state == Climb_up_ledge) or (obj_player.state == Shoot_hang)) //for hanging
&& (global.hangAiming == 0)
{
	if (global.shoot = 0)
	{
		pause = 1;
		image_alpha = 0;
	}
}
else if (global.turning > 0) or (global.turningLedge = 1) or (global.turning_dash2 = 1) //turning
or (global.jumpingdm > 0) //spin jumping
or ((global.charge_shot = 1) && (global.shoot = 0)) //for turning while standing
{
	pause = 1;
	image_alpha = 0;
}
else
{
	pause = 0;
	image_alpha = 1;
}

//turning
with(object_player2_0_sprites)
{
	if (sprite_index = spr_turn_righttoleft) or (sprite_index = spr_turn_lefttoright) or (sprite_index = spr_turn_dleftanddright) or (sprite_index = spr_turn_drighttodleft) or (sprite_index = spr_turn_tulefttoturight) or (sprite_index = spr_turn_turighttotuleft) or (sprite_index = spr_turn_uprighttoupleft) or (sprite_index = spr_turn_uplefttoupright)
	or (sprite_index = spr_turnjump_lefttoright) or (sprite_index = spr_turnjump_righttoleft) or (sprite_index = spr_turnjump_down_lefttoright) or (sprite_index = spr_turnjump_down_righttoleft) or (sprite_index = spr_turnjump_tup_lefttoright) or (sprite_index = spr_turnjump_tup_righttoleft) or (sprite_index = spr_turnjump_up_lefttoright) or (sprite_index = spr_turnjump_up_righttoleft)
	or (sprite_index = spr_crouchturn_lefttoright) or (sprite_index = spr_crouchturn_righttoleft)or (sprite_index = spr_crouchturn_down_lefttoright) or (sprite_index = spr_crouchturn_down_righttoleft)or (sprite_index = spr_crouchturn_trueup_righttoleft) or (sprite_index = spr_crouchturn_trueup_lefttoright)or (sprite_index = spr_crouchturn_up_lefttoright) or (sprite_index = spr_crouchturn_up_righttoleft)
	{
		with(obj_blast_effect)
		{
			pause = 1;
			image_alpha = 0;
		}
	}
}

//normal shooting
if (global.shoot = 1) && (pause != 1)
{     
	image_alpha = 1;
	image_speed = 1;
	pause = 0;
}

//turn off when not firing
if (global.charging = 0) && (global.shoot = 0) && (global.charge_shot = 0) && (fully_charged = 0)
{
    image_speed = 0; 
    image_alpha = 0;
    image_index = 0;
	global.charge_ready = 0;
	global.charge_shot = 0;
}

//turn off when state == Move, and we're no longer firing anything
if (obj_player.state == Move) && (global.shoot == 1)
&& (global.charging == 0) && (global.charge_ready == 0) && (global.charge_shot == 0)
&& (image_index >= 5)
{     
	image_speed = 0; 
    image_alpha = 0;
    image_index = 0;
	global.charge_ready = 0;
	global.charge_shot = 0;
}









//charging shot code
if (global.upgrade_charge == 1)
{
	if (global.shoot = 1) && (pause != 1)
	{
			//cancel charge-1
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
			
			//get correct sprite based on beam
			if (global.beam_shield_available == 1)
			{
				sprite_index = spr_SHIELD_charging_begin;
			}
			else if (global.beam_homing_available == 1)
			{
				sprite_index = spr_HOMING_charging_begin;
			}
			else if (global.beam_burn_available == 1)
			{
				sprite_index = spr_BURN_begincharge1;
			}
			else if (global.beam_spread_available == 1)
			{
				sprite_index = spr_Spread_charging1;
			}
			else if (global.beam_spread_available == 0)
			{
				sprite_index = spr_begin_chargeshot;
			}
			
		    image_speed = 0.5;
		    started_charging = 1;
			audio_play_sound(snd_newbeam_chargeing1,1,false,global.sfx_volume)
	}
	
	if (global.charging = 1) && (fully_charged = 0) && (started_charging = 1) && (global.shoot = 0)
	{
		    //get correct sprite based on beam
			if (global.beam_shield_available == 1)
			{
				sprite_index = spr_SHIELD_charging_begin;
			}
			else if (global.beam_homing_available == 1)
			{
				sprite_index = spr_HOMING_charging_begin;
			}
			else if (global.beam_burn_available == 1)
			{
				sprite_index = spr_BURN_begincharge1;
			}
			else if (global.beam_spread_available == 1)
			{
				sprite_index = spr_Spread_charging1;
			}
			else if (global.beam_spread_available == 0)
			{
				sprite_index = spr_begin_chargeshot;
			}
			
		    image_speed = 0.5;
	}

	if (global.charging = 1) && (fully_charged = 1) && (started_charging = 1) && (global.shoot = 0)
	{
		    //get correct sprite based on beam
			if (global.beam_shield_available == 1)
			{
				sprite_index = spr_SHIELD_charging_fullycharged;
			}
			else if (global.beam_homing_available == 1)
			{
				sprite_index = spr_HOMING_charging_fullycharged;
			}
			else if (global.beam_burn_available == 1)
			{
				sprite_index = spr_BURN_begincharge2;
			}
			else if (global.beam_spread_available == 1)
			{
				sprite_index = spr_Spread_charging2;
			}
			else if (global.beam_spread_available == 0)
			{
				sprite_index = spr_chargeshot;
			}
			
		    image_speed = 1;
		    fully_charged = 1;
		    global.charge_ready = 1;
			audio_stop_sound(snd_newbeam_chargeing1)	
			if (!audio_is_playing(snd_newbeam_chargeing2))
			{
				audio_play_sound(snd_newbeam_chargeing2,1,true,global.sfx_volume)
			}
	}

	if (global.charging = 0) && (fully_charged = 1) && (started_charging = 1) && (global.shoot = 0)
		{
		    fully_charged = 0;
			timer_charging = 0;
			started_charging = 0;
			audio_stop_sound(snd_newbeam_chargeing1)
			audio_stop_sound(snd_newbeam_chargeing2)
		}
	
	if (global.charging = 0) && (global.shoot = 0)
		{
			fully_charged = 0;
			timer_charging = 0;
			started_charging = 0;
			audio_stop_sound(snd_newbeam_chargeing1)
			audio_stop_sound(snd_newbeam_chargeing2)
		}

	if (started_charging = 1) && (timer_charging < charge_time-global.charge_booster) && (fully_charged == 0)
		{
		    timer_charging += 1/60;
		}
	if (image_index >= image_number - 1) && (started_charging = 1) && (timer_charging >= charge_time-global.charge_booster) && (fully_charged == 0)
		{
		    fully_charged = 1;
		}

}



//shooting normally, uncharged
if (global.charging <= 0)
{
	if (global.turning = 0)
	{
		if (global.shoot = 1)
		{
			blast_effect_sprites_init()
			blast_effect_sprites()
		}
	}
}

//megashot effect
if (global.shoot == 1) && (global.charge_ready = 1) && (!instance_exists(obj_megablast_effect))
{
	instance_create_depth(x,y,id.depth-1,obj_megablast_effect)
	blast_effect_location_megashot()
}

//helps object stay in correct position when not charging or shooting
if (global.charging = 0) && (global.shoot == 0)
{
	blast_effect_location_any()	
}



//charging effect location
if (global.charging = 1) && (global.shoot = 0)
{
	script_execute(charge_effect_location);
}

if (global.charging = 1) && (global.shoot = 0) && (pause <= 0)
{
		if (instance_number(obj_charging_particle_effect) < 18)
		{
			instance_create_depth(random_range(x+15,x-15),random_range(y+15,y-15),id.depth+1,obj_charging_particle_effect)
		}
		
		/* for later, if I've finished the game development and completed all bosses and the mothership area, and the challenge and bossrush areas
		if (part_system_exists(global.inst_particle_system[0])) && (part_emitter_exists(global.inst_particle_system[0], global.inst_particle_emitterID[0]))
		{
			part_system_depth(global.inst_particle_system[0], depth+1);
			part_emitter_region(global.inst_particle_system[0], global.inst_particle_emitterID[0], x-30,x+30,y-30,y+30, ps_shape_ellipse, ps_distr_invgaussian)
		}
		*/
}
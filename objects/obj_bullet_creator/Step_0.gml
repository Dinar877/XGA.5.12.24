//makes sure gamepad inputs are recognized
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (!instance_exists(obj_player))
{
	exit;	
}

if (obj_player.state != Shooting) && (obj_player.state != Crouch_shoot) && (obj_player.state != Fall_shoot) && (obj_player.state != Shoot_hang)
&& (obj_player.state != Move)
{
	exit;
}

if (global.turning > 0) or (global.jumpingdm > 0)
{
	exit;
}

Gamepad_variables();

hspd = 0;
vspd = 0;

x = obj_blast_effect.x;
y = obj_blast_effect.y;




//create bullet and set sprite index - no charge shot upgrade
if (global.shoot = 1) && (global.upgrade_charge = 0) && (obj_player.shoot_pressed) && (global.beam_spread_available = 0) && (global.beam_burn_available = 0) && (!global.beam_homing_available)
&& (!global.beam_shield_available)
{
    if (stopper_bullet_creation = 0)
    {
	    global.bullet = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet);
	    stopper_bullet_creation = 1;
		audio_stop_sound(snd_beam1uncharged)
		snd = audio_play_sound(snd_beam1uncharged,1000,false,global.sfx_volume)
		audio_sound_gain(snd,global.sfx_volume,0)
		audio_sound_gain(snd,0,1000)
		shoot_pressed_creator = 1
    }
    
    if (global.upgrade_charge = 0) && (global.charging = 0)
    {
	    with(obj_blast_effect)
	    {
		    //left or right
		    if (sprite_index = spr_shot_left)
		    {
		            with(global.bullet)
		            {
		                if (shootlimit = 0)
		                {
			                sprite_index = spr_bullet_left;
			                hspd = -10;
			                vspd = 0;
			                shootlimit = 1;
		                }
		            }
		    }
		    else if (sprite_index = spr_shot_right)
		    {
		        with(global.bullet)
		            {
		                if (shootlimit = 0)
		                {
			                sprite_index = spr_bullet_Right;
			                hspd = 10;
			                vspd = 0;
			                shootlimit = 1;
		                }
		            }
		    }
		    //up or down
		    else if (sprite_index = spr_shot_up)
		    {
		        with(global.bullet)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bullet_up;
			            hspd = 0;
			            vspd = -10;
			            shootlimit = 1;
		            }
		        }
		    }
		    else if (sprite_index = spr_shot_down)
		    {
		        with(global.bullet)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bullet_down;
			            hspd = 0;
			            vspd = 10;
			            shootlimit = 1;
		            }
		        }
		    }
		    //upLeftorRight
		    else if (sprite_index = spr_shot_upright)
		    {
		        with(global.bullet)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bullet_upright;
			            hspd = 10;
			            vspd = -10;
			            shootlimit = 1;
		            }
		        }
		    }
		    else if (sprite_index = spr_shot_upleft)
		    {
		        with(global.bullet)
		        {
		            if (shootlimit = 0)
		            {            
			            sprite_index = spr_bullet_upleft;
			            hspd = -10;
			            vspd = -10;
			            shootlimit = 1;
		            }
		        }
		    }
    
		    //downLeft or right
		    else if (sprite_index = spr_shot_downright)
		    {
		        with(global.bullet)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bullet_downright;
			            hspd = 10;
			            vspd = 10;
			            shootlimit = 1;
		            }
		        }
		    }
		    else if (sprite_index = spr_downleft)
		    {
		        with(global.bullet)
		        {
		            if (shootlimit = 0)
		            {
			            sprite_index = spr_bullet_downleft;
			            hspd = -10;
			            vspd = 10;
			            shootlimit = 1;
		            }
		        }
		    }
		    with(obj_bullet_creator)
		        {
		            stopper_bullet_creation = 0;
		        }
	    }
	}
}
   
//if charge shot upgrade
with(obj_blast_effect)
{
	    //release charge shot
		if (global.charge_shot = 1) && (global.shoot = 1) && (global.jumpingdm = 0) && (global.beam_spread_available = 0) && (global.beam_burn_available = 0)
		&& (!global.beam_homing_available) && (!global.beam_shield_available)
	    {
			with(obj_player)
		    {
				global.charge_shot = 0;
		        global.charging = 0;
		        shoot_timer = 0;
		        with(obj_blast_effect)
		        {
			        fully_charged = 0;
					timer_charging = 0;
					started_charging = 0;
		        }
		        with(obj_bullet_creator)
		        {
		            if (stop1 = 0) && (stopper_bullet = 0)
		            {
		                stopper_bullet = 1;
		                stop1 = 1;
						script_execute(bullet_charge2);
						instance_create_layer(obj_bullet_creator.x,obj_bullet_creator.y,layer_get_id("Inst_doors"),obj_chargeblast_effect);
						with(global.bullet)
		                {
		                    charge = 1;
		                }
		            }
		        }
		        global.charge_ready = 0;
	            
		    }
		}

		//start charging
	    if (global.charge_ready = 0) && (fully_charged = 0) && (global.shoot = 1) && (global.beam_spread_available = 0) && (global.beam_burn_available = 0)
		&& (!global.beam_homing_available) && (!global.beam_shield_available)
	    {
	        with(obj_player)
	        {
	            if  (global.upgrade_charge = 1) && (shoot_timer = 1) && (global.charge_shot != 1)
	            {
	                with(obj_bullet_creator)
	                {
	                    if (stop1 = 0) && (stopper_bullet = 0)
	                    {
	                        stopper_bullet = 1;
	                        stop1 = 1;
	                        script_execute(bullet_charge);
	                    }
	                }
	                shoot_timer = 0;
	            }
	        }
	    }
}

//if spread beam
with(obj_blast_effect)
{
    if (global.charge_shot = 1) && (global.shoot = 1) && (global.jumpingdm = 0) && (global.beam_spread_available = 1) && (global.beam_burn_available = 0)
     && (!global.beam_homing_available) && (!global.beam_shield_available)
	{
    with(obj_player)
    {
            //if (global.upgrade_charge = 1) && (global.charge_shot = 1)
            {
				global.charge_shot = 0;
                global.charging = 0;
                shoot_timer = 0;
                with(obj_blast_effect)
                {
					fully_charged = 0;
					timer_charging = 0;
					started_charging = 0;
                }
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
						script_execute(bullet_spread_chargedshot);
						instance_create_layer(obj_bullet_creator.x,obj_bullet_creator.y,layer_get_id("Inst_doors"),obj_chargeblast_effect);
						with(global.bullet)
                        {
                            charge = 1;
                        }
                    }
                }
                global.charge_ready = 0;
            }
    }
    }

    if (global.charge_ready = 0) && (fully_charged = 0) && (global.shoot = 1) && (global.beam_spread_available = 1) && (global.beam_burn_available = 0)
     && (!global.beam_homing_available) && (!global.beam_shield_available)
	{
		with(obj_player)
        {
            if  (shoot_timer = 1) && (global.charge_shot != 1)
            {
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
                        script_execute(bullet_spread_unchargedshot);
                    }
                }
                shoot_timer = 0;
            }
        }
    }
}





//if burn beam
with(obj_blast_effect)
{
    if (global.charge_shot = 1) && (global.shoot = 1) && (global.jumpingdm = 0) && (global.beam_burn_available = 1)
     && (!global.beam_homing_available) && (!global.beam_shield_available)
	{
    with(obj_player)
    {
            //if (global.upgrade_charge = 1) && (global.charge_shot = 1)
            {
				global.charge_shot = 0;
                global.charging = 0;
                shoot_timer = 0;
                with(obj_blast_effect)
                {
					fully_charged = 0;
					timer_charging = 0;
					started_charging = 0;
                }
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
						script_execute(bullet_burn_chargedshot);
						instance_create_layer(obj_bullet_creator.x,obj_bullet_creator.y,layer_get_id("Inst_doors"),obj_chargeblast_effect);
						with(global.bullet)
                        {
                            burn = 1;
							charge = 1;
                        }
                    }
                }
                global.charge_ready = 0;
            }
    }
    }

    if (global.charge_ready = 0) && (fully_charged = 0) && (global.shoot = 1) && (global.beam_burn_available = 1)
	 && (!global.beam_homing_available) && (!global.beam_shield_available)
    {
		with(obj_player)
        {
            if  (shoot_timer = 1) && (global.charge_shot != 1)
            {
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
                        script_execute(bullet_burn_unchargedshot);
						with(global.bullet)
                        {
                            burn  = 1;
                        }
                    }
                }
                shoot_timer = 0;
            }
        }
    }
}




//if Homing beam
with(obj_blast_effect)
{
    if (global.charge_shot = 1) && (global.shoot = 1) && (global.jumpingdm = 0)
    && (global.beam_homing_available) && (!global.beam_shield_available)
	{
    with(obj_player)
    {
            //if (global.upgrade_charge = 1) && (global.charge_shot = 1)
            {
				global.charge_shot = 0;
                global.charging = 0;
                shoot_timer = 0;
                with(obj_blast_effect)
                {
					fully_charged = 0;
					timer_charging = 0;
					started_charging = 0;
                }
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
						script_execute(bullet_homing_chargedshot);
						instance_create_layer(obj_bullet_creator.x,obj_bullet_creator.y,layer_get_id("Inst_doors"),obj_chargeblast_effect);
						with(global.bullet)
                        {
                            homing = 1;
							charge = 1;
                        }
                    }
                }
                global.charge_ready = 0;
            }
    }
    }

    if (global.charge_ready = 0) && (fully_charged = 0) && (global.shoot = 1)
	&& (global.beam_homing_available) && (!global.beam_shield_available)
    {
		with(obj_player)
        {
            if  (shoot_timer = 1) && (global.charge_shot != 1)
            {
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
                        script_execute(bullet_homing_unchargedshot);
						with(global.bullet)
                        {
                            homing  = 1;
                        }
                    }
                }
                shoot_timer = 0;
            }
        }
    }
}


//if Homing beam
with(obj_blast_effect)
{
    if (global.charge_shot = 1) && (global.shoot = 1) && (global.jumpingdm = 0)
    && (global.beam_shield_available)
	{
    with(obj_player)
    {
            //if (global.upgrade_charge = 1) && (global.charge_shot = 1)
            {
				global.charge_shot = 0;
                global.charging = 0;
                shoot_timer = 0;
                with(obj_blast_effect)
                {
					fully_charged = 0;
					timer_charging = 0;
					started_charging = 0;
                }
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
						script_execute(bullet_shield_chargedshot);
						instance_create_layer(obj_bullet_creator.x,obj_bullet_creator.y,layer_get_id("Inst_doors"),obj_chargeblast_effect);
						with(global.bullet)
                        {
                            homing = 1;
							charge = 1;
                        }
                    }
                }
                global.charge_ready = 0;
            }
    }
    }

    if (global.charge_ready = 0) && (fully_charged = 0) && (global.shoot = 1)
	&& (global.beam_shield_available)
    {
		with(obj_player)
        {
            if  (shoot_timer = 1) && (global.charge_shot != 1)
            {
                with(obj_bullet_creator)
                {
                    if (stop1 = 0) && (stopper_bullet = 0)
                    {
                        stopper_bullet = 1;
                        stop1 = 1;
                        script_execute(bullet_shield_unchargedshot);
						with(global.bullet)
                        {
                            homing  = 1;
                        }
                    }
                }
                shoot_timer = 0;
            }
        }
    }
}






/* */
/*  */

function Dead() {
	//global variables reset
	global.dead_begin = 1;
	global.walljump = 0;
	global.hurt = 0;
	global.frozen = 0;
	global.superheated = 0;
	global.lockdown_facingDir = 0;
	global.hang = 0;
	global.hangAiming = 0;
	global.grounded = 0;
	global.climbing = 0;
	
	//player local variables reset
	hspd = 0;
	
	//health ui
	with(obj_healthnumberten)
			{
					health_decrease_go = 0
					health_decrease = 0
					health_total = 0
			}

	if (instance_exists(obj_boss_bugspider_sprites))
	{
		with(obj_camera)
				{
					y = obj_mapchecker2.y+97	
				}
	}

	if (instance_exists(obj_boss_bugspider_hitbox))
	{
		with(obj_camera)
				{
					y = obj_mapchecker2.y+97	
				}	
	}

	//reset player hitbox to normal
	if (sprite_index = spr_player_jump)
	    {
	        y -= 7;
	        while(place_meeting(x,y,obj_block))
	        {
	            if (global.facingDir = -1)
	            {
	                y += 1;
	            }
	            if (global.facingDir = 1)
	            {
	                y += 1;
	            }
	        }
	        sprite_index = spr_player;
	    }

	//falling physics
	if ((!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_left))
	 && (!place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right)) && (!place_meeting(x+round(hspd),y+round(vspd),obj_block))) or  (vspd >= 0)
	{
	    grav = 0.25;
	}
	else if ((place_meeting(x+round(hspd),y+round(vspd),obj_slope1_left))
	 or (place_meeting(x+round(hspd),y+round(vspd),obj_slope1_right)) or (place_meeting(x+round(hspd),y+round(vspd),obj_block))) && (vspd != 0)
	{
		grav = 0;
	}

	if (vspd < 7) && ((global.hang = 0) or (global.climbing = 0) or (global.grounded = 0)) && (!jump)
	{
	    vspd += grav;
	}

	//change sprites to getting killed
	if (state = Dead)
	{
		with(object_player2_0_sprites)
		{
		    if (global.facingDir = -1)
		    {
			    sprite_index = spr_player_hurt2right;
			    y = obj_player.y+1;
			    x = obj_player.x;
			    with(obj_player)
			    {
			        if (timer_death > 0)
			        {
			            //for getting killed
			            with(object_player2_0_sprites)
			            {
				            var xmin = (instance_place(x,y,obj_player)).x;
				            var xmax = xmin + (sprite_get_width(spr_player)/2);
				            var ymin = (instance_place(x,y,obj_player)).y;
				            var ymax = ymin + (sprite_get_height(spr_player)/2);
            
				            if (explosion_limit > 0)
				            {
					            instance_create(random_range(xmin, xmax), random_range(ymin, ymax), obj_explosion_random_big);
								audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)

					            explosion_limit -= 3;
				            }
				            else if (explosion_limit <= 0)
				            {
								explosion_limit += 3;
				            }
			            }
            
			            timer_death -= 1;
			        }
			        else if (timer_death <= 0) && (global.dead = 0) && (!instance_exists(obj_scrn_roomtransition))
			        {
			            hspd = 0;
			            vspd = 0;
			            global.dead = 1;
			            global.turning = 0;
			            global.hang = 0;
			            global.climbing = 0;
			            global.lockdown_facingDir = 1;
			            global.dashbegin = 0;
			            global.dashcharge = 0;
			            global.dashuse = 0;
			            global.dashend = 0;
			            global.walljump = 0;
			            global.dead_begin = 0;
			            global.hurt = 0;
			            instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
			            timer_death = -1;
			        }
			    }
		    }
		    else if (global.facingDir = 1)
		    {
			    sprite_index = spr_player_hurt2left;
			    y = obj_player.y+1;
			    x = obj_player.x+3;
			    with(obj_player)
			    {
			        if (timer_death > 0)
			        {
			            //for getting killed
			            with(object_player2_0_sprites)
			            {
				            var xmin = (instance_place(x,y,obj_player)).x;
				            var xmax = xmin + (sprite_get_width(spr_player)/2);
				            var ymin = (instance_place(x,y,obj_player)).y;
				            var ymax = ymin + (sprite_get_height(spr_player)/2);
            
				            if (explosion_limit > 0)
				            {
					            instance_create(random_range(xmin, xmax), random_range(ymin, ymax), obj_explosion_random_big);
								audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
					            explosion_limit -= 3;
				            }
				            else if (explosion_limit <= 0)
				            {
								explosion_limit += 3;
				            }
			            }
            
			            timer_death -= 1;
			        }
			        else if (timer_death <= 0) && (global.dead = 0) && (!instance_exists(obj_scrn_roomtransition))
			        {
			            hspd = 0;
			            vspd = 0;
			            global.dead = 1;
			            global.turning = 0;
			            global.hang = 0;
			            global.climbing = 0;
			            global.lockdown_facingDir = 1;
			            global.dashbegin = 0;
			            global.dashcharge = 0;
			            global.dead_begin = 0;
			            global.dashuse = 0;
			            global.dashend = 0;
			            global.walljump = 0;
			            global.hurt = 0;
			            instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
			            timer_death = -1;
			        }
			    }
		    }
		}
	}



}

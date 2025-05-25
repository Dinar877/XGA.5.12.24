 /// @description controls and physics
//if game is paused, essentially deactivate player without using the deactivate function
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1) or (global.navigation_effect = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1) or (global.upgrade_process = 1)
or (global.corelock_engage = 1)
or (global.stopper_2ndscrnshot = 1)
or (global.cutscene = 1) or (global.cutscene_suit = 1) or (global.loading_startgame = 1)
or (global.room_transition_prep == 1) or (global.room_y == 1)
or (global.pierce_killswitch = 1)
{
	hspd_enemy = 0
	vspd_wind = 0
	
	
	exit;	
}


//x swing
if (state = Sword_spin) && (instance_place(x,y,obj_link_enemies))
{
	with(instance_place(x,y,obj_link_enemies))
	{
		if (!variable_instance_exists((instance_place(x,y,obj_link_enemies)),"warning"))
		{
			hp -= 1
			enemy_hurt = 0.9	
		}
	}
}


//makes sure gamepad inputs are recognized
script_execute(Gamepad_variables);

//other stuff
if (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Wall_jump) && (state != Jump_after_wj) && (global.turning = 0) && (global.dashuse = 0) && (global.dashbegin = 0) && (global.room_transition = 0)
&& (global.dashbegin2 != 1) && (global.room_transition != 1) && (global.room_transition_more != 1) && (global.room_transition1 != 1) && (global.dead_begin != 1) && (global.navigation_effect <= 0)
{
	input_horizontal = ((right_key) - (left_key));
}
else if ((state = Climb_up_ledge) or (state = Ledge_jumpprep) or (state = Wall_jump) or (state = Jump_after_wj) or (global.turning = 1))
{
	input_horizontal = 0;
}
else if (global.room_transition = 1)
{
	input_horizontal = 0;
}


//wallhangtimer
if (hangtimer > 0)
{
	hangtimer -= 0.1
}


//shooting timer
if (instance_exists(obj_bullet))
{
	with(obj_bullet)
    {
		shootlimit = 1;
	}
	with(obj_bullet_side1)
    {
		shootlimit = 1;
	}
	with(obj_bullet_side2)
    {
		shootlimit = 1;
	}
	
	//player code
	if (limit < 8) && (shoot_timer > 0)
	{
	    limit += 1;
	}
	if (limit >= 8) && (shoot_timer > 0)
	{
	    global.shoot = 0;
	    stopper_bullet_creation = 0;
		shoot_timer = 0;
	    limit = 0;
		with(obj_bullet)
		{
			shootlimit = 0;
		}
		with(obj_bullet_side1)
		{
			shootlimit = 0;
		}
		with(obj_bullet_side2)
	    {
			shootlimit = 0;
		}
	}
}
//hanging or climbing
if (global.hang = 1) or (global.climbing = 1)
{
    vspd = 0;
    grav = 0;
}

//dashing
if (global.dashuse = 1)
{
	global.turning = 0;
	speed_x = 15;
}

//ability select
if (global.ability_limit > 0)
{
	abilities()	
}




//hurt
if (global.hurt = 1) && (state != Dead) && (!instance_exists(obj_player_dashspark))
{
	if (state = Crouching) or (state = Crouch_shoot)
	{
	    y -= 5;
	    sprite_index = spr_player;
	    global.crouching = 0;
	}
	State_machine_switch_state(Hurt);
	global.turning = 0;
	global.hang = 0;
	global.climbing = 0;
	global.lockdown_facingDir = 1;
	global.dashbegin = 0;
	global.dashcharge = 0;
	global.dashuse = 0;
	global.dashend = 0;
	global.walljump = 0;
	vspd = 0;
	hspd = 0;
	grav = 0;
	hurt1 = 0;
}



//turning
if (state != Ledge_grab) && (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Wall_jump) && (global.jumpingdm = 0) && (state != Ledge_grab)
&& (state != Dashing2_use) && (state != Dashing2_turning) && (state != Hurt)
&& (state != Shoot_hang)
&& (state != Jump_after_wj) && (state != Jump_after_Dashing_airdash) && (state != Jump_after_Dashing_hydrodash)
&& (state != Sword1) && (state != Sword2) && (state != Sword3) && (state != Sword_jump) && (state != Sword_spin)
{
    if (input_horizontal = 1) && (global.facingDir = -1) && (global.turning_dash2 = 0) && (global.turning = 0)
    {
	    global.turning = 1;
		global.shoot = 0;
		
	    hspd = 0;
		
		with(object_player2_0_sprites)
		{
			image_index = 0;	
		}
		
		//stop shooting if in shooting state before turning
		if (state == Shooting)
		{
			State_machine_switch_state(Idle)
		}
		else if (state == Fall_shoot)
		{
			State_machine_switch_state(Falling)
		}
		else if (state == Crouch_shoot)
		{
			State_machine_switch_state(Crouching)
		}
    }
    if (input_horizontal = -1) && (global.facingDir = 1) && (global.turning_dash2 = 0) && (global.turning = 0)
    {
	    global.turning = 1;
		global.shoot = 0;
	    
		hspd = 0;
		
		with(object_player2_0_sprites)
		{
			image_index = 0;	
		}
		
		//stop shooting if in shooting state before turning
		if (state == Shooting)
		{
			State_machine_switch_state(Idle)
		}
		else if (state == Fall_shoot)
		{
			State_machine_switch_state(Falling)
		}
		else if (state == Crouch_shoot)
		{
			State_machine_switch_state(Crouching)
		}
    }
}

//dash turning
if ((state = Dashing2_use) or (state = Dashing2_turning)) && (global.turning_dash2 = 0) && (global.turning = 0)
{
	if (input_horizontal = 1) && (global.facingDir = -1)
    {
	    global.turning_dash2 = 1;
		global.lockdown_facingDir = 1;
		global.shoot = 0;
	    hspd = 0;
    }
    if (input_horizontal = -1) && (global.facingDir = 1)
    {
	    global.turning_dash2 = 1;
		global.lockdown_facingDir = 1;
		global.shoot = 0;
	    hspd = 0;
    }
}

//dash beginning
if (dash_pressed) && (global.jumping = 0) && ((state = Idle) or (state = Move) or (state = Sword_spin)) && (enemy_slowdownswitch = 0) && (global.speedboots) && (global.suit_shock)
{
    hspd = 0;
	vspd = 0;
	
	//for if dashing out of sword spin state
	audio_stop_sound(snd_saber1)
	
	global.dashbegin2 = 1;
	global.lockdown_facingDir = 1;
	with(object_player2_0_sprites)
	{
		image_index = 0;	
	}
}







//pausing the game
if (enter_pressed) && (global.pause_transition = 0) && (global.room_transition = 0) && (global.dead = 0) && (global.dead_begin = 0) && (global.dead_ending = 0)
&& (global.room_transition1 = 0) && (global.upgrade_process == 0)
{
	global.pause_transition = 1;
	
	if (global.mapgrid_1x1 = 1) or ((global.mapgrid_yZeroMove = 1) && (global.mapgrid_xZeroMove = 1))
	{
		instance_create_layer( __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), layer_get_id("Inst_scrn"), obj_scrn_roomtransition);
	}
	else if (global.mapgrid_1x1 = 0)
	{
		instance_create_layer( obj_camera.x-160, obj_camera.y-90, layer_get_id("Inst_scrn"), obj_scrn_roomtransition);
	}
	
	exit;
}


//custom map markers global image index
global.marker_imageindex += 2/60;




////////////////ABILITIES

	
if (global.invisibility == 1) && (global.hurt == 1)
{
	global.invisibility = 0;	
}



if (global.nuclearblast > 0) && (global.nuclearblast_state = 0)
{
	if (!instance_exists(obj_nuclearblast_scrneffect))
	{
		instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_scrn"),obj_nuclearblast_scrneffect)
	}
	
	if (instance_number(obj_explosion_random_big) < 40)
	{
		instance_create_layer(random_range(obj_camera.bbox_left,obj_camera.bbox_right),random_range(obj_camera.bbox_top,obj_camera.bbox_bottom),layer_get_id("Inst_level_0"),obj_explosion_random_big)
	}
	
	global.screen_shake = 1
	with(obj_camera)
		{
			if (yshake2 == 0)
			{
				yshake2 = 3;
				yshakeno = 2;
			}
		}
}
else if (global.nuclearblast > 0) && (global.nuclearblast_state = 1)
{
	if (!instance_exists(obj_nuclearblast_scrneffect))
	{
		instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_scrn"),obj_nuclearblast_scrneffect)
		with(obj_nuclearblast_scrneffect)
		{
			sprite_index = spr_super_nuclearblast_scrneffect	
		}
	}
	
	if (instance_number(obj_explosion_random_big) < 120)
	{
		instance_create_layer(random_range(obj_camera.bbox_left,obj_camera.bbox_right),random_range(obj_camera.bbox_top,obj_camera.bbox_bottom),layer_get_id("Inst_level_0"),obj_supernuclearblast_randomexplosion)
	}
	
	global.screen_shake = 1
	with(obj_camera)
		{
			if (yshake2 == 0)
			{
				yshake2 = 3;
				yshakeno = 2;
			}
		}
}

if (global.nuclearblast > 0) && ((global.saving > 0) or (global.navigation > 0))
{
				global.nuclearblast = 0;
				global.screen_shake = 0
				
				if (instance_exists(obj_nuclearblast_scrneffect))
				{
					instance_destroy(obj_nuclearblast_scrneffect)
				}
}






//Autohack spawning
if (global.shockwave = 1) && (global.shockwave_state = 0) && (global.shockwave_ammo > 0)
{
	if (!instance_exists(obj_shockwave_energycircle))
		{
			instance_create_layer(id.x,id.y,layer_get_id("Inst_level_0"),obj_shockwave_energycircle)
		}
	if (!instance_exists(obj_shockwave_energyrange))
		{
			instance_create_layer(id.x,id.y,layer_get_id("Inst_level_0"),obj_shockwave_energyrange)
		}
}
else if (global.shockwave = 1) && (global.shockwave_state = 1) && (global.shockwave_ammo > 0)
{
	if (!instance_exists(obj_shockwave_energycircle))
		{
			instance_create_layer(id.x,id.y,layer_get_id("Inst_level_0"),obj_shockwave_energycircle)
		}
	if (!instance_exists(obj_shockwave_energyrange))
		{
			instance_create_layer(id.x,id.y,layer_get_id("Inst_level_0"),obj_shockwave_energyrange)
		}
}

if (global.shockwave <= 0) && (global.shockwave_ammo <= 0) && (audio_is_playing(snd_electricity) > 0) && (instance_exists(obj_shockwave_energycircle))
{
	if (instance_exists(obj_shockwave_energycircle))
	{
		instance_destroy(obj_shockwave_energyrange)
		instance_destroy(obj_shockwave_energycircle)
	}
	audio_stop_sound(snd_electricity)
}














//Collision shit

//hspd_enemy, vspd_wind disabled in room transitions
if (global.room_transition_prep == 1)
{
	hspd_enemy = 0
	vspd_wind = 0
}

//Horizontal
if (hspd != 0) && (hspd_enemy == 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
{
	//NEW SLOPES
	var totalHSPD = (hspd)
	var totalHSPD2 = ((hspd)/2)
	
	var subspeed = 0
	
	if (totalHSPD != 0) 
	&& (totalHSPD <= 1) 
	&& (totalHSPD >= -1)
	{
		if (totalHSPD > 0)
		{
			subspeed = 1
		}
		else if (totalHSPD < 0)
		{
			subspeed = -1
		}
	}

	//NEWslope objects move scipt - LEFT
	// the +1 for y is because at the edge of a block you will not connect with the newslope as you need to go 2 across 3 down to collide with it
	if (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_left)) 
	or (place_meeting(x,y+2,obj_newslope_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+2,obj_newslope_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x,y+2,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed-1,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed-1,y,obj_newslope_right))
	or (place_meeting(x-totalHSPD-subspeed-1,y,obj_newslope_left))
	or (place_meeting(x-totalHSPD-subspeed-1,y,obj_newslope_right))
	or (place_meeting(x+totalHSPD+subspeed+1,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD+subspeed+1,y,obj_newslope_right))
	or (place_meeting(x-totalHSPD-subspeed+1,y,obj_newslope_left))
	or (place_meeting(x-totalHSPD-subspeed+1,y,obj_newslope_right))
	{
		//L
		if (totalHSPD < 0) && (subspeed == 0)
		{
			Moving_newslope_left_biggerthan1()	
		}
		else if (totalHSPD < 0) && (subspeed != 0)
		{
			Moving_newslope_left_lessthan1()	
		}
		
		//R
		if (totalHSPD > 0) && (subspeed == 0)
		{
			Moving_newslope_right_biggerthan1()	
		}
		else if (totalHSPD > 0) && (subspeed != 0)
		{
			Moving_newslope_right_lessthan1()	
		}
	}
	else if (totalHSPD != 0)
	&& ((place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_slope1_left)) 
	or (place_meeting(x,y+2,obj_slope1_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+2,obj_slope1_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_slope1_right)) 
	or (place_meeting(x,y+2,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_slope1_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_slope1_left))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_slope1_right))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_slope1_left))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_slope1_right)))
	{		
		//L
		if (totalHSPD < 0) && (subspeed != 0)
		{
			Moving_slow_left_lessthan1()
		}
		else if (totalHSPD < 0) && (subspeed == 0)
		{
			Moving_slow_left_biggerthan1()
		}
		//R
		if (totalHSPD > 0) && (subspeed != 0)
		{
			Moving_slow_right_lessthan1()
		}
		else if (totalHSPD > 0) && (subspeed == 0)
		{
			Moving_slow_right_biggerthan1()
		}
	}
	else
	{
		
		//left slopes
	    //going up left slope
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	    {
	        if (global.facingDir = 1) && (place_meeting(x+1,y,obj_slope1_left))
	        {
	            y-= floor(hspd+hspd_enemy);
	        }
	        else if (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_block))
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x +=1;
	        }
            
	        global.grounded = 1;
	        grav = 0;
	    }
	    //if near wall and on slope left
	        if (place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_block)) && (position_meeting(x+5,y+19,obj_slope1_left)) && (global.facingDir = 1) && (!place_meeting(x+1,y,obj_block))
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y -= 1;
	            grav=0;
	            global.grounded = 1;
	        }  
	    //going up slope to block
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.facingDir = 1)
	        {
	            x -=1;
	            y -=1;
	        }
	    //going down left slope
	    if (position_meeting(x+5,y+19,obj_slope1_left)) && (!position_meeting(x-5,y+20,obj_block)) && (!position_meeting(x+6,y+19,obj_block))
	        {
	        if (global.facingDir = -1) && (!position_meeting(x-8,y+19,obj_block)) && (!place_meeting(x,y+1,obj_block))
	            {
	                y-= floor(hspd+hspd_enemy);
	                grav = 0;
	            }
	        }
	    //going down left slope to block
	        if (position_meeting(x-8,y+21,obj_block)) && (global.facingDir = -1) && (place_meeting(x+2,y+2,obj_slope1_left))
	        {
	            if (!position_meeting(x-6,y+19,obj_block))
	            {    
		            x += sign(hspd+hspd_enemy);
		            y-=sign(hspd+hspd_enemy);
		            grav=0;
		            global.grounded = 1;
	            }
	        }
	            //going down from block to left slope-1
	        if (global.facingDir = -1) && (!position_meeting(x-(sprite_width/2)+1,y+(sprite_height/2)+1,obj_block))
	        {
	            if (position_meeting(x+4,y+19,obj_block)) && (position_meeting(x+3,y+20,obj_slope1_left))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x-=3; 
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x+5,y+19,obj_block)) && (position_meeting(x+4,y+20,obj_slope1_left))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x-=2;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x+6,y+19,obj_block)) && (position_meeting(x+5,y+20,obj_slope1_left))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x-=1;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
                
	        }
	        //if against wall and on slope left
	        if (place_meeting(x-1,y,obj_block)) && (position_meeting(x+5,y+19,obj_slope1_left)) && (global.facingDir = -1)
	        {
		            hspd = 0;
					hspd_enemy = 0
		            x -= 1;
		            y += 1;
		            grav=0;
		            global.grounded = 1;
	        }   
	            //going up from block to left slope
	        if (position_meeting(x+(hspd+hspd_enemy),y+19,obj_block)) && (global.facingDir = 1) && (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x,y+1,obj_slope1_left))
	        {
	            if (!position_meeting(x+(hspd+hspd_enemy),y+18,obj_slope1_left))
	            {    
		            hspd = 0;
					hspd_enemy = 0
		            x += 1;
		            grav=0;
		            global.grounded = 1;
	            }
	        }
            
			
		//right slopes
	    //going up right slope
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	    {
	        if (global.facingDir = -1) && (place_meeting(x-1,y,obj_slope1_right))
	        {
	            y+= floor(hspd+hspd_enemy);
	        }
	        else if (!place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x-1,y,obj_block)) && (global.facingDir = -1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x -=1;
	        }
	        global.grounded = 1;
	        grav = 0;
	    }
	    //going up slope to block
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.facingDir = -1) && (global.dashbegin2 == 0) && (global.dash2 == 0)
	        {
	            hspd = 0;
				hspd_enemy = 0
				x -=1;
	            y -=1;
	        }
	    //going down right slope
	    if (place_meeting(x-1,y,obj_slope1_right)) && (global.facingDir = 1)
	        {
	        if (!position_meeting(x+8,y+21,obj_block)) && (!place_meeting(x,y+1,obj_block))
	            {
	                hspd = 0;
					hspd_enemy = 0
					if (enemy_slowdownswitch = 0)
					{
		                x += 3;
		                y += 3;
					}
					else if (enemy_slowdownswitch > 0)
					{
		                x += 2;
		                y += 2;
					}
	                grav = 0;
	            }
	        }
	    //going down right slope to block
            
	        if (position_meeting(x+8,y+21,obj_block)) && (global.facingDir = 1) && (place_meeting(x,y+1,obj_slope1_right))
	        {
	            if (!position_meeting(x+6,y+19,obj_block))
	            {    
		            hspd = 0;
					hspd_enemy = 0
		            x += 1;
		            y += 1;
		            grav=0;
		            global.grounded = 1;
	            }
	        }
	            //going down from block to right slope-1
	        if (global.facingDir = 1) && (!position_meeting(x+(sprite_width/2)+1,y+(sprite_height/2)+1,obj_block))
	        {
	            if (position_meeting(x-4,y+19,obj_block)) && (position_meeting(x-3,y+19,obj_slope1_right))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x+=3;   
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x-5,y+19,obj_block)) && (position_meeting(x-4,y+19,obj_slope1_right))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x+=2;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x-6,y+20,obj_block)) && (position_meeting(x-5,y+19,obj_slope1_right))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x+=1;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
                
	        }
	            //going up from block to right slope
	        if (position_meeting(x-4,y+19,obj_block)) && (global.facingDir = -1) && (position_meeting(x-8,y+18,obj_slope1_right)) && (global.dash2 == 0)
	        {
	            if (!position_meeting(x-6,y+18,obj_slope1_right))
	            {    
		            x -= 1;
		            grav=0;
		            global.grounded = 1;
	            }
	        }
	        //if against wall and on slope right
	        if (place_meeting(x-1,y,obj_block)) && (place_meeting(x,y+1,obj_slope1_right)) && (global.facingDir = 1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y += 1;
	            grav=0;
	            global.grounded = 1;
	        }
			
			
			
			//normal collision block
		    if (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.dash2 == 0) && (hspd+hspd_enemy != 0)
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
		        {
		            x += sign(hspd+hspd_enemy);
		        }
				hspd = 0;
				hspd_enemy = 0
		    }
		    if (place_meeting(x+(hspd+hspd_enemy),y-4,obj_block)) && (global.dash2 == 0) && (hspd+hspd_enemy != 0)
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
		        {
		            x += sign(hspd+hspd_enemy);
		            y --;
		            hspd = 0;
					hspd_enemy = 0
		        }
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (place_meeting(x,y-1,obj_slope1_right))
		        {
		            x += sign(hspd+hspd_enemy);
		            y += sign(hspd+hspd_enemy);
		            hspd = 0;
					hspd_enemy = 0
		        }
		    }
			
			
			
			//nano block
		    if (place_meeting(x+(hspd+hspd_enemy),y,obj_block2_nano)) && (hspd+hspd_enemy != 0)
			&& (!place_meeting(x,y,obj_block2_nano))
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (!place_meeting(x,y-2,obj_slope1_left)) && (!place_meeting(x,y-2,obj_slope1_right))
				 && (!place_meeting(x,y,obj_block2_nano))
		        {
		            x += sign(hspd+hspd_enemy);
		        }
				hspd = 0;
				hspd_enemy = 0
		    }
		    if (place_meeting(x+(hspd+hspd_enemy),y-4,obj_block2_nano)) && (hspd+hspd_enemy != 0)
			&& (!place_meeting(x,y,obj_block2_nano))
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (place_meeting(x,y-2,obj_slope1_left)) && (!place_meeting(x,y-2,obj_slope1_right))
				 && (!place_meeting(x,y,obj_block2_nano))
		        {
		            x += sign(hspd+hspd_enemy);
		            y --;
		            hspd = 0;
					hspd_enemy = 0
		        }
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (!place_meeting(x,y-2,obj_slope1_left)) && (place_meeting(x,y-2,obj_slope1_right))
				 && (!place_meeting(x,y,obj_block2_nano))
		        {
		            x += sign(hspd+hspd_enemy);
		            y += sign(hspd+hspd_enemy);
		            hspd = 0;
					hspd_enemy = 0
		        }
		    } 
			
			
			//apply speeds
			x += (hspd+hspd_enemy);	
		}
}
else if (hspd_enemy != 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
&& (state != Ledge_grab) && (state != Shoot_hang)  && (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Dead)
{
	//newslopes
	var totalHSPD = (hspd+hspd_enemy)
	var totalHSPD2 = ((hspd+hspd_enemy)/2)

	var subspeed = 0
	
	if (totalHSPD != 0) 
	&& (totalHSPD <= 1) 
	&& (totalHSPD >= -1)
	{
		if (totalHSPD > 0)
		{
			subspeed = 1
		}
		else if (totalHSPD < 0)
		{
			subspeed = -1
		}
	}
	
	
	

	//NEWslope objects move scipt - LEFT
	if (place_meeting(x+totalHSPD,y+totalHSPD,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_left))
	or (place_meeting(x+totalHSPD,y+totalHSPD,obj_newslope_right)) or (place_meeting(x,y+2,obj_newslope_right))
	or (place_meeting(x+totalHSPD,y+totalHSPD2,obj_newslope_left))
	or (place_meeting(x+totalHSPD,y+totalHSPD2,obj_newslope_right))
	or (place_meeting(x+totalHSPD,y,obj_newslope_left))
	or (place_meeting(x+totalHSPD,y,obj_newslope_right))
	{
		if (totalHSPD < 0)
		{
			Moving_newslope_left_biggerthan1()	
		}
		else if (totalHSPD > 0)
		{
			Moving_newslope_right_biggerthan1()	
		}
	}
	else if (totalHSPD != 0)
	&& ((place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_slope1_left)) 
	or (place_meeting(x,y+2,obj_slope1_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+2,obj_slope1_left)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_slope1_right)) 
	or (place_meeting(x,y+2,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD+subspeed+1,obj_newslope_right)) 
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_slope1_left))
	or (place_meeting(x+totalHSPD+subspeed,y+totalHSPD2+subspeed+1,obj_slope1_right))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_slope1_left))
	or (place_meeting(x+totalHSPD+subspeed,y,obj_slope1_right))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_slope1_left))
	or (place_meeting(x-totalHSPD-subspeed,y,obj_slope1_right)))
	{		
		//L
		if (totalHSPD < 0) && (subspeed != 0)
		{
			Moving_slow_left_lessthan1()
		}
		else if (totalHSPD < 0) && (subspeed == 0)
		{
			Moving_slow_left_biggerthan1()
		}
		//R
		if (totalHSPD > 0) && (subspeed != 0)
		{
			Moving_slow_right_lessthan1()
		}
		else if (totalHSPD > 0) && (subspeed == 0)
		{
			Moving_slow_right_biggerthan1()
		}
	}
	else
	{
		
		//left slopes
	    //going up left slope
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (!place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	    {
	        if (global.facingDir = 1) && (place_meeting(x+1,y,obj_slope1_left))
	        {
	            y-= floor(hspd+hspd_enemy);
	        }
	        else if (!place_meeting(x+1,y,obj_slope1_left)) && (!place_meeting(x+1,y,obj_block))
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x +=1;
	        }
            
	        global.grounded = 1;
	        grav = 0;
	    }
	    //if near wall and on slope left
	        if (place_meeting(x+(hspd+hspd_enemy),y-(hspd+hspd_enemy),obj_block)) && (position_meeting(x+5,y+19,obj_slope1_left)) && (global.facingDir = 1) && (!place_meeting(x+1,y,obj_block))
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y -= 1;
	            grav=0;
	            global.grounded = 1;
	        }  
	    //going up slope to block
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.facingDir = 1)
	        {
	            x -=1;
	            y -=1;
	        }
	    //going down left slope
	    if (position_meeting(x+5,y+19,obj_slope1_left)) && (!position_meeting(x-5,y+20,obj_block)) && (!position_meeting(x+6,y+19,obj_block))
	        {
	        if (global.facingDir = -1) && (!position_meeting(x-8,y+19,obj_block)) && (!place_meeting(x,y+1,obj_block))
	            {
	                y-= floor(hspd+hspd_enemy);
	                grav = 0;
	            }
	        }
	    //going down left slope to block
	        if (position_meeting(x-8,y+21,obj_block)) && (global.facingDir = -1) && (place_meeting(x+2,y+2,obj_slope1_left))
	        {
	            if (!position_meeting(x-6,y+19,obj_block))
	            {    
		            x += sign(hspd+hspd_enemy);
		            y-=sign(hspd+hspd_enemy);
		            grav=0;
		            global.grounded = 1;
	            }
	        }
	            //going down from block to left slope-1
	        if (global.facingDir = -1) && (!position_meeting(x-(sprite_width/2)+1,y+(sprite_height/2)+1,obj_block))
	        {
	            if (position_meeting(x+4,y+19,obj_block)) && (position_meeting(x+3,y+20,obj_slope1_left))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x-=3; 
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x+5,y+19,obj_block)) && (position_meeting(x+4,y+20,obj_slope1_left))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x-=2;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x+6,y+19,obj_block)) && (position_meeting(x+5,y+20,obj_slope1_left))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x-=1;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
                
	        }
	        //if against wall and on slope left
	        if (place_meeting(x-1,y,obj_block)) && (position_meeting(x+5,y+19,obj_slope1_left)) && (global.facingDir = -1)
	        {
		            hspd = 0;
					hspd_enemy = 0
		            x -= 1;
		            y += 1;
		            grav=0;
		            global.grounded = 1;
	        }   
	            //going up from block to left slope
	        if (position_meeting(x+(hspd+hspd_enemy),y+19,obj_block)) && (global.facingDir = 1) && (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_left)) && (place_meeting(x,y+1,obj_slope1_left))
	        {
	            if (!position_meeting(x+(hspd+hspd_enemy),y+18,obj_slope1_left))
	            {    
		            hspd = 0;
					hspd_enemy = 0
		            x += 1;
		            grav=0;
		            global.grounded = 1;
	            }
	        }
            
			
		//right slopes
	    //going up right slope
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right)) && (!place_meeting(x+(hspd+hspd_enemy),y+(hspd+hspd_enemy),obj_block)) && (!place_meeting(x+(hspd+hspd_enemy),y,obj_block))
	    {
	        if (global.facingDir = -1) && (place_meeting(x-1,y,obj_slope1_right))
	        {
	            y+= floor(hspd+hspd_enemy);
	        }
	        else if (!place_meeting(x-1,y,obj_slope1_right)) && (!place_meeting(x-1,y,obj_block)) && (global.facingDir = -1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x -=1;
	        }
	        global.grounded = 1;
	        grav = 0;
	    }
	    //going up slope to block
	    if (place_meeting(x+(hspd+hspd_enemy),y,obj_slope1_right)) && (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.facingDir = -1) && (global.dashbegin2 == 0) && (global.dash2 == 0)
	        {
	            hspd = 0;
				hspd_enemy = 0
				x -=1;
	            y -=1;
	        }
	    //going down right slope
	    if (place_meeting(x-1,y,obj_slope1_right)) && (global.facingDir = 1)
	        {
	        if (!position_meeting(x+8,y+21,obj_block)) && (!place_meeting(x,y+1,obj_block))
	            {
	                hspd = 0;
					hspd_enemy = 0
					if (enemy_slowdownswitch = 0)
					{
		                x += 3;
		                y += 3;
					}
					else if (enemy_slowdownswitch > 0)
					{
		                x += 2;
		                y += 2;
					}
	                grav = 0;
	            }
	        }
	    //going down right slope to block
            
	        if (position_meeting(x+8,y+21,obj_block)) && (global.facingDir = 1) && (place_meeting(x,y+1,obj_slope1_right))
	        {
	            if (!position_meeting(x+6,y+19,obj_block))
	            {    
		            hspd = 0;
					hspd_enemy = 0
		            x += 1;
		            y += 1;
		            grav=0;
		            global.grounded = 1;
	            }
	        }
	            //going down from block to right slope-1
	        if (global.facingDir = 1) && (!position_meeting(x+(sprite_width/2)+1,y+(sprite_height/2)+1,obj_block))
	        {
	            if (position_meeting(x-4,y+19,obj_block)) && (position_meeting(x-3,y+19,obj_slope1_right))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x+=3;   
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x-5,y+19,obj_block)) && (position_meeting(x-4,y+19,obj_slope1_right))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x+=2;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
	            else if (position_meeting(x-6,y+20,obj_block)) && (position_meeting(x-5,y+19,obj_slope1_right))
	            {
		            hspd = 0;
					hspd_enemy = 0
		            x+=1;
		            y+=1;
		            grav=0;
		            global.grounded = 1;
	            }
                
	        }
	            //going up from block to right slope
	        if (position_meeting(x-4,y+19,obj_block)) && (global.facingDir = -1) && (position_meeting(x-8,y+18,obj_slope1_right)) && (global.dash2 == 0)
	        {
	            if (!position_meeting(x-6,y+18,obj_slope1_right))
	            {    
		            x -= 1;
		            grav=0;
		            global.grounded = 1;
	            }
	        }
	        //if against wall and on slope right
	        if (place_meeting(x-1,y,obj_block)) && (place_meeting(x,y+1,obj_slope1_right)) && (global.facingDir = 1)
	        {
	            hspd = 0;
				hspd_enemy = 0
	            x += 1;
	            y += 1;
	            grav=0;
	            global.grounded = 1;
	        }
			
			
			
			//normal collision block
		    if (place_meeting(x+(hspd+hspd_enemy),y,obj_block)) && (global.dash2 == 0) && (hspd+hspd_enemy != 0)
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
		        {
		            x += sign(hspd+hspd_enemy);
		        }
				hspd = 0;
				hspd_enemy = 0
		    }
		    if (place_meeting(x+(hspd+hspd_enemy),y-4,obj_block)) && (global.dash2 == 0) && (hspd+hspd_enemy != 0)
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (place_meeting(x,y-1,obj_slope1_left)) && (!place_meeting(x,y-1,obj_slope1_right))
		        {
		            x += sign(hspd+hspd_enemy);
		            y --;
		            hspd = 0;
					hspd_enemy = 0
		        }
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block)) && (!place_meeting(x,y-1,obj_slope1_left)) && (place_meeting(x,y-1,obj_slope1_right))
		        {
		            x += sign(hspd+hspd_enemy);
		            y += sign(hspd+hspd_enemy);
		            hspd = 0;
					hspd_enemy = 0
		        }
		    }
			
			
			
			//nano block
		    if (place_meeting(x+(hspd+hspd_enemy),y,obj_block2_nano)) && (hspd+hspd_enemy != 0)
			&& (!place_meeting(x,y,obj_block2_nano))
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (!place_meeting(x,y-2,obj_slope1_left)) && (!place_meeting(x,y-2,obj_slope1_right))
				 && (!place_meeting(x,y,obj_block2_nano))
		        {
		            x += sign(hspd+hspd_enemy);
		        }
				hspd = 0;
				hspd_enemy = 0
		    }
		    if (place_meeting(x+(hspd+hspd_enemy),y-4,obj_block2_nano)) && (hspd+hspd_enemy != 0)
			&& (!place_meeting(x,y,obj_block2_nano))
		    {
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (place_meeting(x,y-2,obj_slope1_left)) && (!place_meeting(x,y-2,obj_slope1_right))
				 && (!place_meeting(x,y,obj_block2_nano))
		        {
		            x += sign(hspd+hspd_enemy);
		            y --;
		            hspd = 0;
					hspd_enemy = 0
		        }
		        while (!place_meeting(x+sign(hspd+hspd_enemy),y,obj_block2_nano)) && (!place_meeting(x,y-2,obj_slope1_left)) && (place_meeting(x,y-2,obj_slope1_right))
				 && (!place_meeting(x,y,obj_block2_nano))
		        {
		            x += sign(hspd+hspd_enemy);
		            y += sign(hspd+hspd_enemy);
		            hspd = 0;
					hspd_enemy = 0
		        }
		    } 
			
			
			//apply speeds
			x += (hspd+hspd_enemy);	
	}
}



//Vertical    
if (vspd != 0) && (state != Dead) && (vspd_wind == 0)
{
    //normal collision blockif (place_meeting(x,y+vspd,obj_block))---going down
    if (place_meeting(x,y+(vspd),obj_block)) && (round(vspd) > 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd),obj_slope1_left)) && (!place_meeting(x,y+(vspd),obj_slope1_right))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_block)) && (state != Jumping) && (vspd != 0)
            {
                y += 1;
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
    }
    //normal collision blockif (place_meeting(x,y+vspd,obj_block))---going up
    if (place_meeting(x,y+(vspd),obj_block)) && ((vspd) < 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd),obj_slope1_left)) && (!place_meeting(x,y+(vspd),obj_slope1_right))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_block)) && (state != Jumping) && (vspd != 0)
            {
                y += -1;
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
            grav = 0.25;
    }
	
	
    //normal collision slope1 left
    if (place_meeting(x,y+(vspd),obj_slope1_left)) && (hspd = 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
    }
    //normal collision slope1 right
    if (place_meeting(x,y+(vspd),obj_slope1_right)) && (hspd = 0) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
            while (!place_meeting(x,y+sign(vspd),obj_slope1_right)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
    }
	
	
	
	//normal collision NEWslope left
    if (place_meeting(x,y+(vspd),obj_newslope_left)) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
			
            while (!place_meeting(x,y+sign(vspd),obj_newslope_left)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
			
            global.grounded = 1;
            vspd = 0;
    }
    //normal collision NEWslope right
    if (place_meeting(x,y+(vspd),obj_newslope_right)) && (vspd != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd);
			
            while (!place_meeting(x,y+sign(vspd),obj_newslope_right)) && (state != Jumping) && (vspd != 0)
            {
                hspd = 0;
                y += sign(vspd);
                if (sign(vspd) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
			
            global.grounded = 1;
            vspd = 0;
    }
	
	
	y += (vspd);
	y = floor(y);
}
else //Vertical-with VSPD_WIND    
if (vspd != 0) && (state != Dead) && (vspd_wind != 0)
{
	//normal collision blockif (place_meeting(x,y+vspd+vspd_wind,obj_block))---going down
    if (place_meeting(x,y+(vspd+vspd_wind),obj_block)) && (round(vspd+vspd_wind) > 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_left)) && (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_right))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_block)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                y += 1;
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
			vspd_wind = 0;
    }
    //normal collision blockif (place_meeting(x,y+vspd+vspd_wind,obj_block))---going up
    if (place_meeting(x,y+(vspd+vspd_wind),obj_block)) && ((vspd+vspd_wind) < 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
	&& (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_left)) && (!place_meeting(x,y+(vspd+vspd_wind),obj_slope1_right))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_block)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                y += -1;
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }

            }
            vspd = 0;
			vspd_wind = 0;
            grav = 0.25;
    }
	
	
    //normal collision slope1 left
    if (place_meeting(x,y+(vspd+vspd_wind),obj_slope1_left)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_slope1_left)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
    //normal collision slope1 right
    if (place_meeting(x,y+(vspd+vspd_wind),obj_slope1_right)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_slope1_right)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
	
	
	//normal collision obj_newslope_left
    if (place_meeting(x,y+(vspd+vspd_wind),obj_newslope_left)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_newslope_left)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
    //normal collision obj newslope right
    if (place_meeting(x,y+(vspd+vspd_wind),obj_newslope_right)) && (hspd = 0) && (vspd+vspd_wind != 0) && (!place_meeting(x,y,obj_block2_nano))
    {
            vspd = floor(vspd+vspd_wind);
            while (!place_meeting(x,y+sign(vspd+vspd_wind),obj_newslope_right)) && (state != Jumping) && (vspd+vspd_wind != 0)
            {
                hspd = 0;
                y += sign(vspd+vspd_wind);
                if (sign(vspd+vspd_wind) = 1)
                {
                    against_wall_du = 1;
                }
                else if (sign(vspd+vspd_wind) = -1)
                {
                    against_wall_du = -1;
                }
                
            }
            global.grounded = 1;
            vspd = 0;
			vspd_wind = 0;
    }
	
	
	
	
	
	
	y += (vspd+vspd_wind);
	y = floor(y);
}

if (hspd = 0) && (place_meeting(x,y+1,obj_slope1_left))
{
    vspd = 0;
    grav = 0;
}



//if falling dioagonally onto a slope
if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_right)))
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    
	while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_right)))
    && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x+1,y-1,obj_slope1_right)) && (state != Dashing2_use)
    {
        y --;
    }
    
    
    if ((place_meeting(x+1,y,obj_slope1_right)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}

if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_left))) && (state != Dashing2_use)
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && ((place_meeting(x+(hspd),y+(vspd),obj_slope1_left)))
     && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_slope1_left)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x-1,y-1,obj_slope1_left)) && (state != Dashing2_use)
    {
        y --;
    }
    
    if ((place_meeting(x-1,y,obj_slope1_left)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}




//if falling dioagonally onto a slope - L and R
if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_right)))
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    
	while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_right)))
    && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_newslope_right)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x+1,y-1,obj_newslope_right)) && (state != Dashing2_use)
    {
        y --;
    }
    
    
    if ((place_meeting(x+1,y,obj_newslope_right)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}
else if ((hspd != 0) && (vspd != 0)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_left))) && (state != Dashing2_use)
{
    grav = 0;
    speed_x = 0;
    vspd = floor(vspd);
    while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && ((place_meeting(x+(hspd),y+(vspd),obj_newslope_left)))
     && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (!place_meeting(x-sign(hspd),y,obj_newslope_left)) && (state != Dashing2_use)
    {
         hspd = 0;
         grav = 0;
         speed_x = 0;
         y = floor(y) + sign(vspd);
         input_horizontal = 0;
    }
    //fail safe in case the checks above don't work
    while (place_meeting(x-1,y-1,obj_newslope_left)) && (state != Dashing2_use)
    {
        y --;
    }
    
    if ((place_meeting(x-1,y,obj_newslope_left)))
    {
         speed_x = 0;
         grav = 0;
         vspd = 0;
         hspd = 0;
    }
}








//fail safe in case the checks above don't work-left slope
while (place_meeting(x+1,y-1,obj_slope1_left)) && (state != Dashing2_use)
{
                y --;
}
//fail safe in case the checks above don't work-right slope
while (place_meeting(x-1,y-1,obj_slope1_right)) && (state != Dashing2_use)
{
                y --;
}

//fail safe in case the checks above don't work-left new slope
while (place_meeting(x+1,y-1,obj_newslope_left)) && (state != Dashing2_use)
{
                y --;
}
//fail safe in case the checks above don't work-right new slope
while (place_meeting(x-1,y-1,obj_newslope_right)) && (state != Dashing2_use)
{
                y --;
}



//fail safe if inside collision block - top
if (!position_meeting(x,bbox_bottom+1,obj_block))
&& (place_meeting(x,y,obj_block))
	{
		while (place_meeting(x,y,obj_block))
		&& (!position_meeting(x,bbox_bottom+1,obj_block))
			{
				y ++;	
			}
	}
	
//fail safe if inside collision block - bottom
if (!position_meeting(x,bbox_top-1,obj_block))
&& (place_meeting(x,y,obj_block))
	{
		while (place_meeting(x,y,obj_block))
		&& (!position_meeting(x,bbox_top-1,obj_block))
			{
				y --;	
			}
	}
	
	

if (place_meeting(x,y+1,obj_convayerbelt_block_left))
{
	hspd_enemy = -1
}
else if (place_meeting(x,y+1,obj_convayerbelt_block_right))
{
	hspd_enemy = 1
}
else if (!place_meeting(x,y+1,obj_convayerbelt_block_left)) && (!place_meeting(x,y+1,obj_convayerbelt_block_right))
&& ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_right)) or (place_meeting(x,y+1,obj_slope1_left)))
&& (state != Falling) && (state != Fall_shoot) && (state != Falling_doublejump) && (state != Falling_Dashing2) && (state != Falling_Dashing2_airdash)
{	
	hspd_enemy = 0
}

if ((state = Crouching) or (state = Crouch_shoot)) && (hspd_enemy != 0)
&& (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
&& (!place_meeting(x,y+1,obj_convayerbelt_block_left)) && (!place_meeting(x,y+1,obj_convayerbelt_block_right))
	{
		global.jumpingdm = 0
		global.crouching = 0
		if (sprite_index = spr_player_crouch)
			{
				sprite_index = spr_player
				y -= 4;
			}
		State_machine_switch_state(Falling)	
	}

//moving just off convayer belt
if (place_meeting(x+2,y+1,obj_convayerbelt_block_left)) && (!place_meeting(x-2,y,obj_block)) && (!place_meeting(x-2,y,obj_slope1_left)) && (!place_meeting(x-2,y,obj_slope1_right))
 && (!place_meeting(x,y+1,obj_convayerbelt_block_left))
	{
		x -= 2
	}
else if (place_meeting(x-2,y+1,obj_convayerbelt_block_right)) && (!place_meeting(x+2,y,obj_block)) && (!place_meeting(x+2,y,obj_slope1_left)) && (!place_meeting(x+2,y,obj_slope1_right))
 && (!place_meeting(x,y+1,obj_convayerbelt_block_right))
	{
		x += 2
	}












//sprites
if (input_horizontal = 1) && (global.constantspd <= 0) && (global.lockdown_facingDir = 0) && (global.turning = 0)
 && (global.turning_dash2 = 0) && (global.turningLedge <= 0) && (global.image_speed_lockdown = 0)
{
    global.facingDir = 1;
}
else if (input_horizontal = -1) && (global.constantspd <= 0) && (global.lockdown_facingDir = 0) && (global.turning = 0)
 && (global.turning_dash2 = 0) && (global.turningLedge <= 0) && (global.image_speed_lockdown = 0)
{
    global.facingDir = -1;
}

if (hspd != 0)
{
    global.running = 1;
}
else if (hspd = 0)
{
    global.running = 0;
}


//aiming dogshite
if ((up_key-down_key)> 0) && (input_horizontal == 0) or ((AimtrueUp)-(AimDown+AimUp) > 0)
{
	global.aiming_forward = 0;
	global.aiming_down = 0;
	global.aiming_truedown = 0;
	global.aiming_trueup = 1;
	global.aiming_up = 0;
}
else if ((up_key-down_key)< 0) && (input_horizontal == 0)
{
	global.aiming_forward = 0;
	global.aiming_down = 0;
	global.aiming_truedown = 1;
	global.aiming_trueup = 0;
	global.aiming_up = 0;
}
else if ((up_key-down_key)> 0) && (input_horizontal != 0) or ((AimUp)-(AimDown+AimtrueUp) > 0)
{
	global.aiming_forward = 0;
	global.aiming_down = 0;
	global.aiming_truedown = 0;
	global.aiming_trueup = 0;
	global.aiming_up = 1;
}
else if ((up_key-down_key)< 0) && (input_horizontal != 0) or ((AimDown)-(AimtrueUp+AimUp) > 0)
{
	global.aiming_forward = 0;
	global.aiming_down = 1;
	global.aiming_truedown = 0;
	global.aiming_trueup = 0;
	global.aiming_up = 0;
}
else if ((up_key-down_key) = 0)
{
	global.aiming_forward = 1;
	global.aiming_down = 0;
	global.aiming_truedown = 0;
	global.aiming_trueup = 0;
	global.aiming_up = 0;
}




//room transitions-normal
#region
if (righty != 1) && (lefty != 1) && (global.room_transition = 1) && (global.room_transition_notnowL1 = 1)
        {
		script_execute(doors1);
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
        if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
		if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        righty = 1;
        x = obj_door_normal_left.x-28;
        y = obj_door_normal_left.y+16;
        jump = 0;
        jump_held = 0;
        }
if (righty = 1) && (global.room_transition_notnowL1 = 1)
        {
            if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left.x-147;
	                    y = obj_door_normal_left.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left.x-313;
	                y = obj_door_normal_left.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left.x-147;
	                    y = obj_door_normal_left.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left.x-307;
	                y = obj_door_normal_left.y-74;
	            }
			}
            global.room_x = 1;
        }
if (righty != 1) && (lefty != 1) && (global.room_transition = 1) && (global.room_transition_notnowR1 = 1)
        {
		script_execute(doors1);
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        lefty = 1;
        x = obj_door_normal_right.x+30;
        y = obj_door_normal_right.y+16;
        jump = 0;
        jump_held = 0;
        }
if (lefty = 1) && (global.room_transition_notnowR1 = 1)
        {
            if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right.x+147;
						y = obj_door_normal_right.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right.x-13;
	                y = obj_door_normal_right.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right.x+147;
						y = obj_door_normal_right.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right.x-14;
	                y = obj_door_normal_right.y-74;
	            }
			}
            global.room_x = 1;
        }
#endregion

//room transitions ALT
#region
if (righty != 1) && (lefty != 1) && (global.room_transition1 = 1) && (global.room_transition_notnowL2 = 1)
        {
		script_execute(doors1Alt);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        righty = 1;
        x = obj_door_normal_leftAlt.x-28;
        y = obj_door_normal_leftAlt.y+16;
        jump = 0;
        jump_held = 0;
        }
if (righty = 1) && (global.room_transition_notnowL2 = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_leftAlt.x-147;
	                    y = obj_door_normal_leftAlt.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_leftAlt.x-307;
	                y = obj_door_normal_leftAlt.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_leftAlt.x-147;
	                    y = obj_door_normal_leftAlt.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_leftAlt.x-307;
	                y = obj_door_normal_leftAlt.y-74;
	            }
			}
			
			
            global.room_x = 1;
        }
if (righty != 1) && (lefty != 1) && (global.room_transition1 = 1) && (global.room_transition_notnowR2 = 1)
        {
		script_execute(doors1Alt);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_left_more)) or (instance_exists(obj_door_normal_right_more))
		{
			script_execute(doors1more);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        lefty = 1;
        x = obj_door_normal_rightAlt.x+30;
        y = obj_door_normal_rightAlt.y+16;
        jump = 0;
        jump_held = 0;
        }
if (lefty = 1) && (global.room_transition_notnowR2 = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_rightAlt.x+147;
						y = obj_door_normal_rightAlt.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_rightAlt.x-13;
	                y = obj_door_normal_rightAlt.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_rightAlt.x+147;
						y = obj_door_normal_rightAlt.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_rightAlt.x-16;
	                y = obj_door_normal_rightAlt.y-74;
	            }
			}
			
            global.room_x = 1;
        }
#endregion
	
//////////////////////room transitions_more
#region
		if (righty != 1) && (lefty != 1) && (global.room_transition_more = 1) && (global.room_transition_notnowL_more = 1)
        {
		script_execute(doors1more);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        righty = 1;
        x = obj_door_normal_left_more.x-28;
        y = obj_door_normal_left_more.y+16;
        jump = 0;
        jump_held = 0;
        }
if (righty = 1) && (global.room_transition_notnowL_more = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left_more.x-147;
	                    y = obj_door_normal_left_more.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left_more.x-307;
	                y = obj_door_normal_left_more.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_left_more.x-147;
	                    y = obj_door_normal_left_more.y+16;
	                }
            
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                //x = obj_room_transition_l2r1.x-227;
	                x = obj_door_normal_left_more.x-307;
	                y = obj_door_normal_left_more.y-74;
	            }
			}
			
            global.room_x = 1;
        }
if (righty != 1) && (lefty != 1) && (global.room_transition_more = 1) && (global.room_transition_notnowR_more = 1)
        {
		script_execute(doors1more);
		if (instance_exists(obj_door_normal_left)) or (instance_exists(obj_door_normal_right))
		{
			script_execute(doors1);
		}
		if (instance_exists(obj_door_normal_leftAlt)) or (instance_exists(obj_door_normal_rightAlt))
		{
			script_execute(doors1Alt);
		}
		if (state = Crouching) or (state = Crouch_shoot)
	    {
		    y -= 5;
		    sprite_index = spr_player;
		    global.crouching = 0;
	    }
        if (global.state != Jumping) && (global.state != Jump_after_Dashing2)
					{
					State_machine_switch_state(global.state);
					}
					else if (global.state = Jumping) or (global.state = Jump_after_Dashing2)
					{
					State_machine_switch_state(Falling);
					}
		hspd = 0;
		vspd = 0;
		input_horizontal = 0;
        lefty = 1;
        x = obj_door_normal_right_more.x+30;
        y = obj_door_normal_right_more.y+16;
        jump = 0;
        jump_held = 0;
        }
if (lefty = 1) && (global.room_transition_notnowR_more = 1)
        {
			if (global.mapgrid_1x1 == 0)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right_more.x+147;
						y = obj_door_normal_right_more.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right_more.x-13;
	                y = obj_door_normal_right_more.y-74;
	            }
			}
			else if (global.mapgrid_1x1 == 1)
			{
				with(obj_camera)
	                {
	                    x = obj_door_normal_right_more.x+147;
						y = obj_door_normal_right_more.y+16;
	                }
	            with(obj_scrn_roomtransition)
	            {
	                FadeNow = 1.0;
	                x = obj_door_normal_right_more.x-14;
	                y = obj_door_normal_right_more.y-74;
	            }
			}
			
            global.room_x = 1;
        }
#endregion



if (global.room_transition_notnowL1 = 0) && (global.room_transition_notnowR1 = 0) && (global.room_transition_notnowL2 = 0) && (global.room_transition_notnowR2 = 0)
 && (global.room_transition_notnowL_more = 0) && (global.room_transition_notnowR_more = 0) && (global.room_transition_nodoors <= 0) && (global.room_transition_nodoors_2 <= 0) && (global.room_transition_nodoors_more <= 0)
{
	global.room_x = 0;	
}




////SLOWING DOWN VIA LIQUID
if (enemy_slowdownswitch = 0) && ((place_meeting(x,y,obj_waterregion)) or (place_meeting(x,y,obj_waterregion)) or (place_meeting(x,y,obj_lavaregion)) or (place_meeting(x,y,obj_lava_middle)))
{
	if (instance_position(x,bbox_bottom,obj_waterregion)) && (!instance_exists(obj_water_splash1)) && (water_effect == 0) //water
	{
		with(instance_position(x,bbox_bottom,obj_waterregion))
		{
			instance_create(obj_player.x,bbox_top,obj_water_splash1)
			
			audio_stop_sound(snd_watersplash)
			var snd1 = audio_play_sound(snd_watersplash,1,false,global.sfx_volume)
			audio_sound_set_track_position(snd1,1)
			
			global.inwater = 1
		}
		water_effect = 1
	}
	else if (instance_position(x,bbox_bottom,obj_lavaregion)) && (!instance_exists(obj_water_splash1)) && (water_effect == 0) //lava
	{
		with(instance_position(x,bbox_bottom,obj_lavaregion))
		{
			instance_create(obj_player.x,bbox_top,obj_water_splash1)
			
			audio_stop_sound(snd_watersplash)
			var snd1 = audio_play_sound(snd_watersplash,1,false,global.sfx_volume)
			audio_sound_set_track_position(snd1,1)
			
			with(obj_water_splash1)
			{
				sprite_index = spr_lava_splash1
				global.superheated = 1
			}
			global.inwater = 1
		}
		water_effect = 1
	}
	
	global.lockdown_facingDir = 0
	
	if (global.hydrodash <= 0)
	{
		enemy_slowdownswitch = 1;
		hspd = global.facingDir*abs(input_horizontal*2)
		with(object_player2_0_sprites)
					{
						image_speed = 0.25;	
					}	
				
		global.lockdown_facingDir = 0
		if (state = Dashing2_begin) or (state = Dashing2_turning) or (state = Dashing2_use)
		{
			global.dashbegin2 = 0
			global.dashuse = 0
			global.dashend = 0
			global.turning_dash2 = 0
			State_machine_switch_state(Move)
		}
	
		if (state = Falling_Dashing2_airdash) or (state = Falling_Dashing2) or (state = Jump_after_Dashing_airdash) or (state = Jump_after_Dashing2)
		{
			global.dashbegin2 = 0
			global.dashuse = 0
			global.dashend = 0
			global.turning_dash2 = 0
			State_machine_switch_state(Falling)
		}
	}
}
else if ((!place_meeting(x,y,obj_corrupted_grass1)) && (!place_meeting(x,y,obj_lavaregion)) && (!place_meeting(x,y,obj_lavaregion)) && (!place_meeting(x,y,obj_waterregion)) && (!place_meeting(x,y,obj_waterregion)))
{	
	global.inwater = 0
	if (instance_position(x,bbox_top,obj_waterregion)) && (!instance_exists(obj_water_splash1)) && (enemy_slowdownswitch == 1)
	{
		with(instance_position(x,bbox_top,obj_waterregion))
		{
			instance_create(obj_player.x,bbox_top,obj_water_splash1)
			
			audio_stop_sound(snd_watersplash)
			var snd1 = audio_play_sound(snd_watersplash,1,false,global.sfx_volume)
			audio_sound_set_track_position(snd1,1)
		}
	}
	
	if (!place_meeting(x,y,obj_lavaregion)) && (!instance_exists(obj_water_splash1))
	{
		global.superheated = 0
	}
	
	if (enemy_slowdownswitch > 0)
	{
		enemy_slowdownswitch = 0;
	}
	
	if (water_effect > 0)
	{
		water_effect = 0
	}
	
	with(object_player2_0_sprites)
		{
			image_speed = 1;	
		}
}
else if (global.hydrodash == 1) && (enemy_slowdownswitch == 1)
{
	enemy_slowdownswitch = 0;
	with(object_player2_0_sprites)
	{
		image_speed = 1;	
	}	
}
















if (!global.room_transition) && (!global.room_transition1) && (!global.room_transition_more)
{
	State_machine_execute();
}

/* */
///camera shit

/* */
/*  */

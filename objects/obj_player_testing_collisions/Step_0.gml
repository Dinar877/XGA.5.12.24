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

//makes sure gamepad inputs are recognized
script_execute(Gamepad_variables);




//input horizontal
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




//Collision shit
/*
//create our own hspd 
if (input_horizontal != 0)
{
	hspd = (input_horizontal*speed_x);
}
else
{
	hspd = 0;
	hspd_enemy = 0;
}
*/



//reset hspd from collision scripts setting hspd to 0

speed_x = random_range(1,1);

if (global.facingDir > 0) //turn around
&& (place_meeting(x+(sign(speed_x)*1),y,obj_block))
&& (!place_meeting(x+(sign(speed_x)*1),y,obj_slope1_left))
&& (!place_meeting(x+(sign(speed_x)*1),y,obj_slope1_right))
&& (!place_meeting(x+(sign(speed_x)*1),y,obj_newslope_left))
&& (!place_meeting(x+(sign(speed_x)*1),y,obj_newslope_right))
{
	hspd = -speed_x
	//hspd = -random_range(1,15);
	//hspd = -speed_x
	global.facingDir = -1;
}
else if (global.facingDir < 0) //turn around
&& (place_meeting(x-(sign(speed_x)*1),y,obj_block))
&& (!place_meeting(x-(sign(speed_x)*1),y,obj_slope1_left))
&& (!place_meeting(x-(sign(speed_x)*1),y,obj_slope1_right))
&& (!place_meeting(x-(sign(speed_x)*1),y,obj_newslope_left))
&& (!place_meeting(x-(sign(speed_x)*1),y,obj_newslope_right))
{
	hspd = speed_x
	//hspd = random_range(1,15);
	//hspd = speed_x
	global.facingDir = 1;
}
else if (global.facingDir > 0) //moving
&& (!place_meeting(x+sign(speed_x),y,obj_block))
{
	hspd = speed_x
	//hspd = random_range(1,15);
	//hspd = speed_x
	global.facingDir = 1;
}
else if (global.facingDir < 0) 
&& (!place_meeting(x-sign(speed_x),y,obj_block))
{
	hspd = -speed_x
	//hspd = -random_range(1,15);
	//hspd = -speed_x
	global.facingDir = -1;
}



//Horizontal
if (hspd != 0) && (hspd_enemy == 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
{
	//HANDLES ALL COLLISION CODE
	DetermineMoveScript(hspd);
}
else if (hspd_enemy != 0) && (global.dashbegin2 == 0) && (global.dash2 == 0)
&& (state != Ledge_grab) && (state != Shoot_hang)  && (state != Ledge_jumpprep) && (state != Climb_up_ledge) && (state != Dead)
{
	//HANDLES ALL COLLISION CODE
	DetermineMoveScript(hspd+hspd_enemy);
}






	
	

//conveyor belts movement code
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
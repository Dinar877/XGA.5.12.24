// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerLanding(){
	//if next to collision stuff
	if (place_meeting(x,y+1,obj_block) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
		    global.jumping = 0;
		    global.grounded = 1;
	    }
		if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	    } 
	    hspd = 0;
	    vspd = 0;
	    jump_stopper1 = 0;
		double_jump = 0; 
		dash_jump = 0;
		
	    State_machine_switch_state(Idle_landing); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		audio_stop_sound(snd_saber1);
		
		instance_destroy(obj_player_sword_hitbox);
		
		PlayerLandingSFX();
	     
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
		global.lockdown_facingDir = 0
	}
	else if (place_meeting(x,y+1,obj_slope1_left) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
		    global.jumping = 0;
		    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		dash_jump = 0;
		jump_stopper1 = 0
		
	    State_machine_switch_state(Idle_landing); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		audio_stop_sound(snd_saber1);
		
		instance_destroy(obj_player_sword_hitbox);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
	    global.lockdown_facingDir = 0
	}
	else if (place_meeting(x,y+1,obj_slope1_right) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
	    global.jumping = 0;
	    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		dash_jump = 0;
		jump_stopper1 = 0
		
	    State_machine_switch_state(Idle_landing); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		audio_stop_sound(snd_saber1);
		
		instance_destroy(obj_player_sword_hitbox);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
	    global.lockdown_facingDir = 0
	}
	else if (place_meeting(x,y+1,obj_newslope_left) != 0 ) //newslopes
	{
	    if (global.jumpingdm = 0)
	    {
		    global.jumping = 0;
		    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		dash_jump = 0;
		jump_stopper1 = 0
		
	    State_machine_switch_state(Idle_landing); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		audio_stop_sound(snd_saber1);
		
		instance_destroy(obj_player_sword_hitbox);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
	    global.lockdown_facingDir = 0
	}
	else if (place_meeting(x,y+1,obj_newslope_right) != 0)
	{
	    if (global.jumpingdm = 0)
	    {
		    global.jumping = 0;
		    global.grounded = 1;
	    }
	    if (sprite_index = spr_player_jump)
	    {
	        with(obj_camera)
			{
				yspin = -7;
			}
			y -= 7;
	        sprite_index = spr_player;
	        hspd = 0;
	    }
	    hspd = 0;
	    vspd = 0;
	    double_jump = 0; 
		dash_jump = 0;
		jump_stopper1 = 0
		
	    State_machine_switch_state(Idle_landing); 
		audio_stop_sound(snd_player_spinjump);
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_stop_sound(snd_player_spacejump);
		audio_stop_sound(snd_player_screwattack);
		audio_stop_sound(snd_swordswoosh);
		audio_stop_sound(snd_saber1);
		
		instance_destroy(obj_player_sword_hitbox);
		
		PlayerLandingSFX();
		
	    global.jumping_maxheight = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.dash2_jump = 0
	    global.lockdown_facingDir = 0
	}
	
	#endregion

}
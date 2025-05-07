// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sword_spin(){
	
	global.lockdown_facingDir = 1
	
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    global.lockdown_facingDir = 0
		
		State_machine_switch_state(Dead);
		exit
	}

	//if less health, go to hurt state
	if (global.hurt = 1)
	{
	    global.lockdown_facingDir = 0
		
		State_machine_switch_state(Hurt);
		exit
	}
	
	with(object_player2_0_sprites)
	{
		x = obj_player.x	
		y = obj_player.y+1
		
		
		//LEFT AND RIGHT VER.
		if (global.facingDir < 0)
		{
			if (sprite_index != spr_sword_run_Xleft_begin) && (sprite_index != spr_sword_run_Xleft_active) && (sprite_index != spr_sword_run_Xleft_end)
			{
				image_index = 0
				sprite_index = spr_sword_run_Xleft_begin
				
				audio_stop_sound(snd_saber1)
				var sndy = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)
				
				sword_swing_now = 1
			}
		
		
			if (sprite_index = spr_sword_run_Xleft_begin) && (image_index >= image_number-1)
			{
				sprite_index = spr_sword_run_Xleft_active
			}
		
			if (sprite_index = spr_sword_run_Xleft_active) && (obj_player.ability <= 0)
			{
				sprite_index = spr_sword_run_Xleft_end
			}
			else if (sprite_index = spr_sword_run_Xleft_active) && (floor(image_index) == 0)
			{
				audio_stop_sound(snd_saber1)
				var sndy = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)
				audio_sound_pitch(sndy,1.1)
			}
		
			if (sprite_index = spr_sword_run_Xleft_end) && (image_index >= image_number-1)
			{
				sword_swing_now = 0
				audio_stop_sound(snd_saber1)
				
				global.lockdown_facingDir = 0
				
				with(obj_player)
				{
					State_machine_switch_state(Idle)	
					exit
				}
			}
		}
		else if (global.facingDir > 0)
		{
			if (sprite_index != spr_sword_run_Xright_begin) && (sprite_index != spr_sword_run_Xright_active) && (sprite_index != spr_sword_run_Xright_end)
			{
				image_index = 0
				sprite_index = spr_sword_run_Xright_begin
				
				audio_stop_sound(snd_saber1)
				var sndy = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)
				
				sword_swing_now = 1
			}
		
		
			if (sprite_index = spr_sword_run_Xright_begin) && (image_index >= image_number-1)
			{
				sprite_index = spr_sword_run_Xright_active
			}
		
			if (sprite_index = spr_sword_run_Xright_active) && (obj_player.ability <= 0)
			{
				sprite_index = spr_sword_run_Xright_end
			}
			else if (sprite_index = spr_sword_run_Xright_active) && (floor(image_index) == 0)
			{
				audio_stop_sound(snd_saber1)
				var sndy = audio_play_sound(snd_saber1,1000,false,global.sfx_volume)
				audio_sound_pitch(sndy,1.1)
			}
		
			if (sprite_index = spr_sword_run_Xright_end) && (image_index >= image_number-1)
			{
				sword_swing_now = 0
				audio_stop_sound(snd_saber1)
				
				global.lockdown_facingDir = 0
				
				with(obj_player)
				{
					State_machine_switch_state(Idle)	
					exit
				}
			}
		}
	}
	
	//dashing
	if (global.dashbegin2 = 1) && (enemy_slowdownswitch < 1) && (global.speedboots) && (global.suit_shock)
	{
	    global.lockdown_facingDir = 1;
		if (global.facingDir = -1)
		{
				hspd = -2;
				script_execute(Moving_Dashing2_left);
		}
		if (global.facingDir = 1)
		{
				hspd = 2;
				script_execute(Moving_Dashing2_right);
		}
	    State_machine_switch_state(Dashing2_begin);
		exit;
	}
	
	//COLLISION CODE AND OTHER.
	if (global.turning = 0) && (global.dashbegin = 0) && (enemy_slowdownswitch = 0)
	{
	    if (speed_x < 3)
	    {
	        speed_x += 0.5;
	    }
	    else if (speed_x >= 3)
	    {
	        speed_x = 3;
	    }
	    hspd = floor(input_horizontal * speed_x);
	}
	else if (global.turning = 0) && (global.dashbegin = 0) && (enemy_slowdownswitch = 1)
	{
	    if (speed_x < 2)
	    {
	        speed_x += 0.2;
	    }
	    else if (speed_x >= 2)
	    {
	        speed_x = 2;
	    }
	    hspd = floor(input_horizontal * speed_x);
	}	
	
	if ((input_horizontal = 0) && (global.turning = 0)) or (Select)
	{
	    hspd = 0;
		audio_stop_sound(snd_saber1)
		
		global.lockdown_facingDir = 0
		
	    State_machine_switch_state(Idle);
	}
	
	
	if (jump_pressed = 1) && (falling = 0)
	{
	    if (input_horizontal = 0)
	    {
	        sprite_index = spr_player;
	        global.jumping = 1;
			audio_play_sound(snd_player_normaljump,0.7,false);
	    }
	    else if (input_horizontal != 0)
	    {
	        sprite_index = spr_player_jump;
	        global.jumping = 1;
	        global.jumpingdm = 1;
	    }
		
		audio_stop_sound(snd_saber1)
		
		global.lockdown_facingDir = 0
		
	    State_machine_switch_state(Sword_jump);
		
		with(object_player2_0_sprites)
		{
			instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)	
		}
		
		if (enemy_slowdownswitch = 0)
		{
			vspd = -5;
		}
		else if (enemy_slowdownswitch = 1)
		{
			vspd = -4;
		}
		
		exit
	}
	else if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+2,obj_slope1_left))  && (!place_meeting(x,y+2,obj_slope1_right))
	&& (!place_meeting(x,y+2,obj_newslope_left))  && (!place_meeting(x,y+2,obj_newslope_right))
	{
	    audio_stop_sound(snd_saber1)
		
		global.lockdown_facingDir = 0
		
		State_machine_switch_state(Sword_jump);
		
		with(object_player2_0_sprites)
		{
			instance_create_depth(id.x,id.y,id.depth,obj_player_sword_hitbox)	
		}
		
		exit
	}

}
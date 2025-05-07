/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1) && ((sprite_index = spr_savepillar_playerusebegin_left) or (sprite_index = spr_savepillar_playerusebegin_right))
{
	sprite_index = spr_savepillar_playeruseactive	
}

if (image_index >= image_number-1) && (sprite_index = spr_savepillar_playeruseend_left)
{
	instance_destroy()
	
	audio_stop_sound(snd_saveroom_laser)
	
	instance_activate_object(obj_player)
	instance_activate_object(object_player2_0_sprites)
	with(object_player2_0_sprites)
	{
		if (global.facingDir > 0)
		{
			sprite_index = spr_stand_right_2
		}
		else if (global.facingDir < 0)
		{
			sprite_index = spr_stand_left_2
		}
		x = other.x-2;
		y = 106;	
	}
	with(obj_player)
	{
		if (sprite_index = spr_player_jump)
	    {
	        x = other.x-2;
			y = 106;	
			with(obj_camera)
			{
				yspin = -7;
			}
	        sprite_index = spr_player;
	    } 
		else if (sprite_index = spr_player_crouch)
	    {
	        x = other.x-2;
			y = 106;	
			with(obj_camera)
			{
				yspin = -4;
			}
	        sprite_index = spr_player;
	    } 
		else if (sprite_index = spr_player)
		{
			x = other.x-2;
			y = 106;	
		}
		
		State_machine_switch_state(Idle)
	}
	with(obj_NEWsav_top)
	{
		dontsave = 0;	
	}
	global.saving = 0;
	global.lockdown_facingDir = 0;
	global.dash2_spark = 0;
}
else if (image_index >= image_number-1) && (sprite_index = spr_savepillar_playeruseend_right)
{
	instance_destroy()
	instance_activate_object(obj_player)
	instance_activate_object(object_player2_0_sprites)
	with(object_player2_0_sprites)
	{
		x = other.x-2;
		y = 106;	
	}
	with(obj_player)
	{
		if (sprite_index = spr_player_jump)
	    {
	        x = other.x-2;
			y = 106;	
			with(obj_camera)
			{
				yspin = -7;
			}
	        sprite_index = spr_player;
	    } 
		else if (sprite_index = spr_player_crouch)
	    {
	        x = other.x-2;
			y = 106;	
			with(obj_camera)
			{
				yspin = -4;
			}
	        sprite_index = spr_player;
	    } 
		else if (sprite_index = spr_player)
		{
			x = other.x-2;
			y = 106;	
		}
		
		State_machine_switch_state(Idle)
	}
	with(obj_NEWsav_top)
	{
		dontsave = 0;	
	}
	global.saving = 0;
	global.lockdown_facingDir = 0;
	global.dash2_spark = 0;
}
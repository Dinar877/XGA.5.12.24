/// @description Insert description here
// You can write your code in this editor
if (global.room_transition_prep > 0)
{
	with(obj_player)
	{
		hspd_enemy = 0
		vspd_wind = 0
	}
	exit
}


if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_wind)
	exit;	
}
else
{
	audio_resume_sound(snd_wind)	
}


if (!instance_exists(obj_player))
{
	audio_pause_sound(snd_wind)
	exit
}

//audio shiieeeet
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_emitter_gain(global.inst_audio_emitterID[inst_n], (30/dist) * global.sfx_volume)


if (x > obj_player.x)
{
	with(obj_player)
	{
		hspd_enemy = 1	
	}	
}
else if (x < obj_player.x)
{
	with(obj_player)
	{
		hspd_enemy = -1
	}	
}


if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		vspd_wind = -10	
		grav = 0
		vspd = (vspd/5)
		if (state = Idle) or (state = Idle_landing) or (state = Move) or (state = Shooting)
		{
			State_machine_switch_state(Jumping)
		}
	}
}
else if (!place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		if (!place_meeting(x,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right)) && (vspd_wind != 0)
		&& (!place_meeting(x,y,obj_enemy_windgust_wind))
		{
			vspd_wind += 0.2
		}
		else if (vspd_wind < 1) && (vspd_wind > -1) && ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right)))
		{
			vspd_wind = 0	
		}
	}
}
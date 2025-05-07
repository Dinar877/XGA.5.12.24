/// @description Insert description here
// You can write your code in this editor
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
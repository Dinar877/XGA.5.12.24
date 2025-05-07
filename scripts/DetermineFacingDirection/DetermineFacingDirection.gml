// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DetermineFacingDirection(){
	
	//if character that can turn around
	if (variable_instance_exists(self,"facing")) && (variable_instance_exists(self,"hspd"))
	&& ((object_index == obj_enemy_slime_hitbox)
	or (object_index == obj_enemy_wormy_hitbox))
	{
		if (facing > 0) //turn around
		&& (place_meeting(x+(sign(argument0)*1),y,obj_block))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_slope1_left))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_slope1_right))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_newslope_left))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_newslope_right))
		{
			hspd = -argument0
			facing = -1;
		}
		else if (facing < 0) //turn around
		&& (place_meeting(x+(sign(argument0)*1),y,obj_block))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_slope1_left))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_slope1_right))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_newslope_left))
		&& (!place_meeting(x+(sign(argument0)*1),y,obj_newslope_right))
		{
			hspd = argument0
			facing = 1;
		}
		else if (facing > 0) //when moving
		&& (!place_meeting(x+sign(argument0),y,obj_block))
		{
			facing = 1;
		}
		else if (facing < 0) //when moving
		&& (!place_meeting(x-sign(argument0),y,obj_block))
		{
			facing = -1;
		}	
		
		
		//if movement scripts found we're at the edge of a block and our speed is gone as a result
		if (facing > 0) && (argument0 == 0)
		{
			facing = -1;
		}
		else if (facing < 0) && (argument0 == 0)
		{
			facing = 1;
		}
	}

}
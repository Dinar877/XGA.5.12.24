/// @description Insert description here
// You can write your code in this editor

//checks various global variables to see if collision should be happening now
if (objects_step_check() == true)
{
	exit	
}

if (!place_meeting(x,y,obj_player)) && (active = false)
{
	active = true	
}

if (place_meeting(id.x,id.y,obj_player)) && (active = true)
{
	var insty = (instance_place(id.x,id.y,obj_timelock_switch))
	
	if (insty > -1)
	{
		with(insty)
		{
			on = true;
		}
	}
	
	instance_destroy(obj_timelock_clock)
	instance_destroy(obj_timelock_clockhand)
	
	instance_destroy()
}

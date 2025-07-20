/// @description Insert description here
// You can write your code in this editor
if (place_meeting(id.x,id.y,obj_player))
{
	var insty = (instance_place(id.x,id.y,obj_timelock_switch))
	
	if (insty > -1)
	{
		with(insty)
		{
			on = true;
		}
	}
}

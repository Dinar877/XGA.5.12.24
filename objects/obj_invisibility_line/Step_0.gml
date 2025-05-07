/// @description Insert description here
// You can write your code in this editor
if (place_meeting(id.x,id.y,obj_player)) && (global.invisibility <= 0)
{
	var insty = (instance_place(id.x,id.y,obj_invisibilitylock_switch))
	
	if (insty > -1)
	{
		with(insty)
		{
			on = 1
		}
	}
}
else if (place_meeting(id.x,id.y,obj_player)) && (global.invisibility > 0)
{
	instance_destroy()
}
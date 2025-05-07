/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_block2_nano)) && (global.nanoshield > 0)
{
	instance_deactivate_object(obj_block2_nano)
}
else if (!instance_exists(obj_block2_nano)) && (global.nanoshield <= 0)
{
	with(obj_player)
	{
		instance_activate_object(obj_block2_nano)
		
		if (place_meeting(x,y,obj_block2_nano))
		{
			instance_deactivate_object(obj_block2_nano)
		}
	}
}

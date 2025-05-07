/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)

Gamepad_variables()

if (jump_pressed) && (textyID > -1)
{	
	instance_create_depth(textyID.x+278,textyID.y+5,textyID.depth-5,obj_text_spawning_arrow_ender_any_trueend)
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
	{	
		with(obj_text_spawning_arrow_ender_any_trueend)
				{
					spawnerID = other.spawnerID
					markerX = other.markerX
					markerY = other.markerY
					markerID = other.markerID
				}
	}
	instance_destroy();
}
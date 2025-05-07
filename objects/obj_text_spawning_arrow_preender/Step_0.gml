/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)

Gamepad_variables()

if (jump_pressed)
{	
	with(obj_texty)
	{
		pauser_end = 1
	}
	instance_destroy();
}
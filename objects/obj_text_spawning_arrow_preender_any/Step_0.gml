/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)

Gamepad_variables()

if (jump_pressed)
{	
	with(obj_texty_generic_biome_1_2)
	{
		pauser_end = 1
	}
	instance_destroy();
}
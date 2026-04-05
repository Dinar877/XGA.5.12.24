/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()

if (instance_exists(obj_texty_generic_shorter))
{
	if (jump)
	{
		with(obj_texty_generic_shorter)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_generic_shorter)
		{
			spd = 0.25	
		}
	}
}

if (new1 == 0)
{
	new1 = 1;
	text = " INVALID SIGNATURE DETECTED! VIRUS DETECTED! ALL PERSONNEL ORDERED TO EVACUATE IMMEDIATELY! HIDDEN RANDOM TIME LIMIT GENERATED UNTIL DELETION OF SYSTEM CORE! BEGINNING DELETION.... "
	
	Text(text, spd, self)
	
	
	message3 = " SYSTEM CORE";
	Text_readit2_generic(message3,spd);
}

if (new1 == 1) && (!instance_exists(obj_texty_generic_shorter))
{
	instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui"),obj_alarmscrn)
	
	instance_destroy()
}
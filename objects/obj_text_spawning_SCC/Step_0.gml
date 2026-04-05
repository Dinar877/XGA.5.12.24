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
	text = " LOCKDOWN MODE ENGAGED! MOTHERSHIP ENTRY DENIED! ENTER THE SYSTEM CORE TO MANUALLY REVERT CHANGES!"
	
	Text(text, spd, self)
	
	
	message3 = " S.C.C.";
	Text_readit2_generic(message3,spd);
}
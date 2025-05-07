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
	text = " YOU'D BETTER NOT CAUSE TROUBLE FOR US! I'LL SHUT YOU DOWN MYSELF IF SO...PERMANENTLY.";
	new1 = 1;
	Text(text,spd,self)
	//irrelevant
	message3 = " WEAKLING";
	Text_readit2_generic(message3,spd);
}
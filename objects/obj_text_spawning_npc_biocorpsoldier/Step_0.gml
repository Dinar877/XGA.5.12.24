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
	text = " 01000001 01011010 01010101 01001101 01000001 01001110 01000111 01000001 00100000 01000100 01000001 01001001 01001111 01001000 00100001.";
	new1 = 1;
	Text(text,spd,self)
	//irrelevant
	message3 = " BIOCORP CYBORG";
	Text_readit2_generic(message3,spd);
}
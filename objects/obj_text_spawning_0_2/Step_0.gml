/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()

if (instance_exists(obj_texty_marker))
{
	if (jump)
	{
		with(obj_texty_marker)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_marker)
		{
			spd = 0.25	
		}
	}
}

if (new1 == 0)
{
	//relevant
	global.xleft = 0
	global.yup = 0
	text = " WARNING! POINT OF NO RETURN DETECTED UP AHEAD. MAKE SURE YOU ARE FULLY PREPARED BEFORE ADVANCING.";
	new1 = 1;
	Text_marker(text,spd,self,19,13,obj_maptile_tile_hint)
	//irrelevant
	message3 = " SECURITY MESSAGE: ";
	Text_readit2_generic(message3,spd);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
}
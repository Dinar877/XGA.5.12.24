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

if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	if (jump)
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			spd = 0.25	
		}
	}
}

if (new1 == 0)
{
	global.xleft = 0
	global.yup = 0
	text = " FAST TRAVEL TO WHICH SAVE ROOM...";
	new1 = 1;
	Text_generic(text,spd)
	
	//irrelevant
	message3 = " ? ? ?";
	Text_readit2_generic(message3,spd);
}
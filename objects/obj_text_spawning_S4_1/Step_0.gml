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
	global.xleft = 0
	global.yup = 0
	text = " XGA HASN'T BEEN TO THIS AREA YET I DON'T THINK, BUT SECTOR 4 IS WHERE ALL THE MECHANICAL LIFE FORMS WERE CREATED AND EXPERIMENTED ON. A LOT OF THEM HAVE GONE ROGUE AND WILL ATTACK ON SIGHT, SO WATCH OUT! I'M SENSING AN ENERGY DISTRUBANCE IN THE UPPER-RIGHT OF THIS AREA, AND I NEED YOU TO CHECK IT OUT." 
	new1 = 1;
	Text_marker(text,spd,self,8,-6,obj_maptile_tile_hint)
	//irrelevant
	message3 = " ? ? ?";
	Text_readit2_generic(message3,spd);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
}
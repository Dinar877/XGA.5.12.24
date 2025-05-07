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
	audio_stop_sound(snd_boss_warning)
	
	//relevant
	global.xleft = 0
	global.yup = 0
	text = " EVERYONE IS DEAD EXCEPT FOR US IT SEEMS. IF THAT WASN'T ENOUGH, ALL THE BIO WEAPONS OF THE RESEARCH STATION WE'RE IN ARE DEVELOPED BY BIO-CORP AND THEY'RE ON THEIR WAY RIGHT NOW TO COLLECT THEM! YOU NEED TO GET INTO THESE SECTORS AND KILL ALL OF THEM, BEFORE THEY ARRIVE AND USE THEM TO CREATE CLONES FOR THEIR CORPORATE ARMIES. I'D RECOMMEND HEADING ABOVE US INTO SECTOR 1 (HDR) FOR NOW, AND I'LL BRIEF YOU ON THE DETAILS ONCE YOU ARRIVE AT THE SECTOR'S NAV ROOM. I'VE ALSO UNLOCKED THE YELLOW DOOR IN THE UPPER RIGHT CORNER OF THIS AREA LEADING TO THE VARIOUS SECTORS SO YOU CAN REACH THESE BIO WEAPONS. BUT WATCH OUT, XGA IS HUNTING US AND IF IT CATCHES EITHER OF US, WE'LL BE ANNIHILATED.";
	new1 = 1;
	Text_marker(text,spd,self,14,8,obj_maptile_tile_hint)
	//irrelevant
	message3 = " ? ? ?";
	Text_readit2_generic(message3,spd);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
}
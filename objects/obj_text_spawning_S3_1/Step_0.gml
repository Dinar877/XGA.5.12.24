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
	text = " THIS AREA HAS MANY THERMONUCLEAR GENERATORS THAT SUPPLY POWER TO THE WHOLE OF THE SPACE LAB WE'RE ON (2B-15XX) AND KEEP EVERYTHING RUNNING. HOWEVER, THEY NOW ARE BEING CONTROLLED BY A ROGUE AI THAT HAS HIJACKED THE GENERATORS' POWER, AND IS FEEDING OFF OF IT. YOU NEED TO FIND IT AND SHUT IT DOWN PERMANENTLY. REMEMBER TO KEEP A LOOK OUT FOR XGA, AS GETTING CAUGHT WOULD RESULT IN IT KILLING YOU ALMOST IMMEDIATELY, AND YOUR ONLY REAL DEFENSE AGAINST IT IS TO HIDE AND NOT GET CAUGHT. IN ADDITION, THIS AREA HAS A LOT OF LAVA AND DANGEROUS ROBOTS THAT ARE CORRUPTED BY SOME UNKNOWN FORCE, ALMOST LIKE A VIRUS, SO STAY VIGILANT! MOVE OUT!";
	new1 = 1;
	Text_marker(text,spd,self,39,44,obj_maptile_tile_hint)
	//irrelevant
	message3 = " ? ? ?";
	Text_readit2_generic(message3,spd);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
}
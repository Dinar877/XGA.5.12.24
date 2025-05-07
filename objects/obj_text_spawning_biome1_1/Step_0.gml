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
	text = " THE 'NANO PLATED SPIDER' IS ONE OF THE BIO WEAPONS CREATED IN SECTOR 1, AND IT WAS GOING TO USE ITS NANOTECHNOLOGY MODIFIED SHELL TO DRILL THROUGH ENTIRE PLANETS AND CREATE MINING FACILITIES FOR VARIOUS OTHER COMPANIES BIO CORP WORKS WITH. RIGHT NOW IT SEEMS TO BE DRILLING THROUGH SECTOR 1 AS WE SPEAK BY INSTINCT, AND COULD CAUSE SOME SERIOUS DAMAGE TO THE STATION IF WE DON'T KILL IT. AS ITS THICK SHELL IS VERY RESISTANT TO MOST FORMS OF ATTACKS, I'D STRONGLY RECOMMEND FIGURING OUT A WAY TO DAMAGE IT SINCE YOUR BEAM ALONE WON'T AFFECT IT. YOU COULD TRY SHOOTING THE STALACTITES IT PRODUCES AND SEE IF THAT EFFECTS IT. BUT WE'RE RUNNING OUT OF TIME SO YOU'D BETTER FIND IT AND GET TO WORK!";
	Text_marker(text,spd,self,17,11,obj_maptile_tile_hint)
	new1 = 1;
	message3 = " ? ? ?";
	Text_readit2(message3,spd);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
}
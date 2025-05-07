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
	text = " SECTOR 2 WAS A JUNGLE RESEARCH BIOME FOR BIO-CORP'S SCIENTISTS ON THE STATION, BUT NOW MOST OF IT HAS BEEN OVERRUN BY VARIOUS VEGETATION AFTER ALL THE TIME THAT HAS PASSED HERE. RECENTLY IT'S ALL STARTING TO GROW MUCH FASTER FOR UNKNOWN REASONS, AND THIS MIGHT NEGATIVELY EFFECT THE WHOLE STATION FOR US IN THE FUTURE IF ESSENTIAL PARTS OF THE SHIP GET CHOKED UP BY VEGETATION AND SUCH. IT'S NEAR THE BOTTOM OF SECTOR 2 THAT THE CORE OF IT IS LOCATED, AND THIS AREA IS OUT OF POWER ALREADY SO YOU'D NEED SOME KIND OF LIGHT SOURCE TO NAVIGATE IN THERE EFFECTIVELY. LUCKILY THERE'S A DATA ROOM (WHICH CONTAINS A DOWNLOAD FILE FOR A LIGHT EMITTING ABILITY) THAT SEEMS TO OF SURVIVED THE VEGETATION CHOKING, SO KEEP A LOOK OUT FOR IT.";
	new1 = 1;
	Text_marker(text,spd,self,23,38,obj_maptile_tile_hint)
	//irrelevant
	message3 = " ? ? ?";
	Text_readit2_generic(message3,spd);
	message4 = " PRESS 'START' TO SKIP TEXT. ";
	Text_skiptext(message4,0.15)
}
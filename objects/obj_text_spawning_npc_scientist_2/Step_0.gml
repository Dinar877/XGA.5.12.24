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
	text = " HELLO. MY NAME IS MARK TAYLOR, AND I CREATED YOU. YOUR NAME IS 'ASTRO'. I'VE FINISHED INSTALLING ALL YOUR PARTS AND SOFTWARE SO YOU'LL BE READY FOR THE MEETING. OUR BOSSES ARE EXPECTING GREAT THINGS FROM YOU. YOU CAN ROAM AROUND FOR NOW, BUT ENTRY TO THE XGA ROOM IS RESTRICTED. DON'T ENTER. IF YOU DO I'LL SHUT YOU DOWN REMOTELY.";
	new1 = 1;
	Text(text,spd,self)
	//irrelevant
	message3 = " MARK TAYLOR";
	Text_readit2_generic(message3,spd);
}
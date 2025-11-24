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
	text = " I'M NOT SUPPOSED TO LET YOU PASS, BUT AFTER BEING THREATENED WITH LOSING MY JOB BECAUSE MY BOSS WON'T LET ME SLEEP LONGER SO I CAN WORK PROPERLY, HE CAN GO SCREW HIMSELF! WE ALREADY ONLY GET 4 HOURS OF SLEEP ALLOWANCE PER DAY! WE'RE BEING WORKED TO THE BONE HERE!! I'M DEFINITELY GOING TO QUIT THIS STUPID JOB SOON.";
	new1 = 1;
	Text(text,spd,self)
	//irrelevant
	message3 = " MIA WRIGHT";
	Text_readit2_generic(message3,spd);
}
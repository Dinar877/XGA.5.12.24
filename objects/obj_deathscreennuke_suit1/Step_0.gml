/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
Gamepad_getname()
text = text2

//fade out
if (state = 2) && (alpha > 0)
{
	alpha -= 0.05	
}
else if (state = 2) && (alpha <= 0)
{
	alpha -= 0.05	
	global.cutscene_suit = 0
	state = 3
}

if (state = 0) && (!instance_exists(obj_scrn_roomtransition))
{
	if (global.cutscene_suit > 0) && (yscale < 180)
	{
		alpha = 1;
		yscale = lerp(yscale,181,0.12);
	}
	else if (global.cutscene_suit > 0) && (yscale >= 180)
	{
		global.suit_pure = 1
		global.speedboots = 1
		global.airdash = 1
		
		//global.spacejump = 1
		
		state = 1
	}
}
else if (state = 1)
{
	if (xscale < 321)
	{
		xscale = lerp(xscale,321,0.12);
	}
	else if (xscale >= 320)
	{
		state = 2
	}
}
else if (state = 3)
{
	state = 4
	
	if (global.suit_pure > 0) && (alpha > 0)
	{
		alpha -= 0.05;
	}
	else if (global.suit_pure > 0) && (alpha <= 0)
	{
		global.cutscene_suit = 0
		global.upgrade_process = 1;
		
		Item_upgradegot_effect()
	}
}

if (global.upgradecollected[upgradeID] = 1)
{
	instance_destroy()	
}

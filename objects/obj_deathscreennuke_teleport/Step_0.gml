/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
Gamepad_getname()
text = text2

//fade out
if (state = 2) && (alpha > 0) && (traveled = 1)
{
	alpha -= 0.05	
}
else if (state = 2) && (alpha <= 0)
{
	alpha -= 0.05	
	state = 3
}

if (state = 0)
{
	if (yscale < 180)
	{
		alpha = 1;
		yscale = lerp(yscale,181,0.12);
	}
	else if (yscale >= 180)
	{
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
	
	if (alpha > 0)
	{
		alpha -= 0.05;
	}
	else if (alpha <= 0)
	{
		instance_destroy()
		exit
	}
}

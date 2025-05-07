/// @description Insert description here
// You can write your code in this editor
if (global.xvision = 1) && (global.upgrade_process = 0) && (image_alpha > 0.4)
{
	image_alpha -= 0.005;
}
else if (global.xvision = 0) && (image_alpha < 0.7)
{
	image_alpha += 0.005	
}

if (global.shoot > 0)
{
	scale1 = 1.1
}

if (scale1 > 1.0)
{
	scale1 -= 0.005	
}

if (image_alpha <= 0) && (global.xvision = 1)
{
	instance_destroy()	
}

//xvision_lightsource
#region
if (global.facingDir < 0)
{
	if (global.aiming_up <= 0) && (global.aiming_trueup <= 0) && (global.aiming_down <= 0) && (global.aiming_truedown <= 0)
	{

		angleother = 180
	}
	else if (global.aiming_up > 0)
	{

		angleother = 135
	}
	else if (global.aiming_trueup > 0)
	{

		angleother = 90
	}
	else if (global.aiming_down > 0)
	{

		angleother = 225
	}
	else if (global.aiming_truedown > 0)
	{

		angleother = 270
	}
}
else if (global.facingDir > 0)
{
	if (global.aiming_up <= 0) && (global.aiming_trueup <= 0) && (global.aiming_down <= 0) && (global.aiming_truedown <= 0)
	{

		angleother = 0
	}
	else if (global.aiming_up > 0)
	{

		angleother = 45
	}
	else if (global.aiming_trueup > 0)
	{

		angleother = 90
	}
	else if (global.aiming_down > 0)
	{

		angleother = 315
	}
	else if (global.aiming_truedown > 0)
	{

		angleother = 270
	}
}
#endregion

if (global.turning = 0)
{
	blast_effect_location_noshoot_xvision()
}
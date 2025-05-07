//xga intro effect
if (image_alpha <= 1) && (instance_exists(obj_player)) && (global.cutscene = 0)
{
	image_alpha += (1/room_speed)/2
}
else if (image_alpha >= 1) && (global.cutscene = 1)
{
	image_alpha = 0
}


//main step
image_index = (global.health1 div 10);
global.health10 = image_index;

health_decrease = floor(health_decrease)
health_increase = floor(health_increase)

if (global.pickup_health == 1) && (global.health1 != 0)
&& (global.health_limit > global.health1)
{
    health_increase += 2
	global.pickup_health = 0
}

if (global.pickup_health_smaller == 1) && (global.health1 != 0)
&& (global.health_limit > global.health1)
{
    health_increase += 1
	global.pickup_health_smaller = 0
}

if (health_increase-health_decrease != 0) && (health_increase > 0) && (health_decrease > 0)
{
	while (health_increase-health_decrease != 0) && (health_increase > 0) && (health_decrease > 0)
	{
		health_decrease--
		health_increase--
	}
}


if (health_increase > 0) && (health_decrease = 0)
{
	health_increase--;
	if (health_decrease > 0)
	{
		health_decrease--;
	}
	if (global.health_limit > global.health1)
	{
		global.health1++;
		health_total = global.health1
	}
}
else if (health_decrease > 0) && (health_increase = 0)
{
	if (global.health1 > 0) && (global.health1 > health_total-health_decrease)
	{
		global.health1--
	}
	else if (global.health1 <= health_total-health_decrease)
	{
		health_decrease = 0
	}
}

if (global.health_limit < global.health1)
	{
		global.health1 = global.health_limit
	}
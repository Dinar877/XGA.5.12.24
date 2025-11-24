/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(inst_sight))
{
	exit;	
}

if (killTimer > 0)
{
	killTimer -= (1/60);
}
else if (killTimer <= 0)
{
	instance_destroy(inst_sight);
	instance_destroy();
	exit;
}


if (go == false) && (initialUp > 0)
{
	y -= initialUp;
	inst_sight.y -= initialUp;
	initialUp--;
}

if (go == true)
{
	if (directionX == 0) // right
	{
		x += xspeed;
		inst_sight.x += xspeed;
		image_angle += xspeed;
		inst_sight.image_angle += xspeed;
	}
	else if (directionX == 1) // left
	{
		x -= xspeed;
		inst_sight.x -= xspeed;
		image_angle -= xspeed;
		inst_sight.image_angle -= xspeed;
	}
	
	xspeed = xspeed + xspeedAdder;
}

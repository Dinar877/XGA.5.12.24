/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


if (idleY > 2)
{
	idleswitch1 = 0;
	idleswitch2 = 1;
}
else if (idleY < -2)
{
	idleswitch1 = 1;
	idleswitch2 = 0;
}

if (idleswitch1)
{
	idleY += 0.005;	
}
else if (idleswitch2)
{
	idleY -= 0.005;	
}

x = inst2.x;
y = inst2.y+idleY;
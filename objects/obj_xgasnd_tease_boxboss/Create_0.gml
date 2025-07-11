/// @description Insert description here
// You can write your code in this editor
sndID = -1
BossblockerID = 0
new1 = 0
on = 0
timer = 0

footstep_volume = 2

if (global.bossblockers[bossblockers.box] <= 0)
{
	instance_destroy();
	exit;
}

sndID = -1
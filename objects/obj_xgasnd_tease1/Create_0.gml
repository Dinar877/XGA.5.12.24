/// @description Insert description here
// You can write your code in this editor
sndID = -1
BossblockerID = 0
new1 = 0
on = 0
timer = 0

footstep_volume = 1

if (global.bossblockers[bossblockers.flowey] <= 0)
{
	instance_destroy();
	exit;
}

sndID = -1
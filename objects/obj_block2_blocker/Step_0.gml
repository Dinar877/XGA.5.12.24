/// @description Insert description here
// You can write your code in this editor
if (redblockerID <= 0)
{
	RedblockerID()
}

if (global.doors_redblocker[redblockerID] > 0)// or (global.bossblockers[BossblockerID] > 0)
{	
	instance_destroy()
}
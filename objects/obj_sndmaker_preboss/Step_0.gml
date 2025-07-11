/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	exit;
}


Music_loop(sndID, 3.441, 22.585);
			
sndID = -1;
instance_destroy();
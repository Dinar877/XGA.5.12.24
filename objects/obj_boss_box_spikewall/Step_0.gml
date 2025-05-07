/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.bossblockers[BossblockerID] > 0)
{
	if (instance_exists(obj_block2_blocker))
	{
		with(obj_block2_blocker)
		{
			instance_destroy()	
		}
	}
	if (instance_exists(obj_block2_blocker1))
	{
		with(obj_block2_blocker1)
		{
			instance_destroy()
		}
	}
	
	instance_destroy();
	exit;
}

if (place_meeting(id.x,id.y,obj_player))
{
	enemy_hurt_player_code(1)	
}
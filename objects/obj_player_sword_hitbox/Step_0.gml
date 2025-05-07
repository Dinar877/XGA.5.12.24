/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1) or (global.navigation_effect = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.corelock_engage = 1)
or (global.room_transition_nodoors = 1)
or (global.room_transition_nodoors_2 = 1)
or (global.room_transition_nodoors_more = 1)
or (global.cutscene = 1) or (global.cutscene_suit = 1) or (global.loading_startgame = 1)
{
	image_speed = 0
	
	exit;	
}
else image_speed = 1


if (instance_exists(obj_player))
{
	if (obj_player.state != Sword_jump) && (obj_player.state != Sword1) && (obj_player.state != Sword2) && (obj_player.state != Sword3)
	&& (obj_player.state != Sword_crouch)
	{
		instance_destroy()	
	}
}
else if (!instance_exists(obj_player))
{
	instance_destroy()	
}
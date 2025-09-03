/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.pause_exit = 1)
or (global.boss_warning = 1)
or (global.room_transition = 1)
or (global.room_transition1 = 1)
or (global.room_transition_more = 1)
or (global.room_transition_nodoors = 1)
or (global.room_transition_nodoors_more = 1)
or (global.room_transition_nodoors_2 = 1)
or (global.cutscene_suit = 1)
or (global.dead = 1)
{
	instance_destroy()
	exit;
}

if (instance_exists(obj_player))
{
	obj_player.x = x
	obj_player.y = y
}

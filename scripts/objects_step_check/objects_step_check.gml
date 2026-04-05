// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function objects_step_check(){
	
	if (global.pause_transition = 1)
	or (global.pause_map = 1)
	or (global.upgrade_process = 1)
	or (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1) or (global.room_transition_3 = 1)
	or (global.room_transition_nodoors = 1) or (global.room_transition_nodoors_2 = 1) or (global.room_transition_nodoors_more = 1) or (global.room_transition_nodoors_3 = 1)
	or (!instance_exists(obj_player))
	{
		return true;
	}

}
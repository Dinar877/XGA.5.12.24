/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.room_transition_down = 1) or (global.room_transition_up = 1)
or (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1)
{
	exit;	
}

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((global.screwjump = 0) or ((global.jumpingdm = 0) && (global.screwjump = 1)))
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.dead_begin = 0)
{
    global.hurt = 1;
	global.healthKiller = 1;
}

if (image_index >= image_number-1)
{
	instance_destroy()	
}
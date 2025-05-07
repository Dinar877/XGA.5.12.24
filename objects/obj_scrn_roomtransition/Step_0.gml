 /////////////////DEAD
if (global.dead_begin) or (global.dead) or (global.dead_ending)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_death1);
}

//////////////////TELEPORT - FAST TRAVEL FROM SAVE ROOMS
if (global.teleport)
{
	script_execute(scrn_teleport);
}

////////////////////////////////////////////////////room transitions
if (global.room_transition == 1)
&& (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_roomtransition);
}

////////////////////////////////////////////////////room transitions ALT
if (global.room_transition1 == 1)
&& (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_roomtransition1);
}

////////////////////////////////////////////////////room transitions_more
if (global.room_transition_more == 1)
&& (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_roomtransition_more);
}

//////////////////////////////////////////////////room transition- no doors- UP
if (global.room_transition_nodoors == 1) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_roomtransition_nodoors)	
}

//////////////////////////////////////////////////room transition- no doors- 2
if (global.room_transition_nodoors_2 == 1) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_more == 0)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_roomtransition_nodoors_2)	
}

//////////////////////////////////////////////////room transition- no doors- more
if (global.room_transition_nodoors_more == 1) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0)
{
	audio_stop_sound(snd_xga_heartbeat)
	script_execute(scrn_roomtransition_nodoors_more)	
}

//////////////////////////////////// ////Pausing the game
if (global.pause_transition = 1) && (global.upgrade_process = 0) && (global.pause_exit == 0)
{
	script_execute(scrn_pausing);	
}

//////////////////////////////////// ////UN-Pausing the game
if (global.upgrade_process = 0) && (global.pause_exit == 1)
{
	script_execute(scrn_pause_exit);	
}

/////////////////////////////////////////Getting any upgrade
if (global.upgrade_process = 1) && (global.pause_transition = 0) && (global.pause_exit = 0)
{
	script_execute(scrn_upgrade_process);	
}

/////////////////////////////////////////Saving the game
if (global.saving = 1)
{
	script_execute(scrn_saving);	
}

/////////////////////////////////////////loading
if (global.loading = 1) && (!global.dead_ending)
{
	script_execute(scrn_loading);	
}
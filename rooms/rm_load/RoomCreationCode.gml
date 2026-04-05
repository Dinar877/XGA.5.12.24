//checks what location, relative to the overall area map (not the map of the room, but
//the map of the entire collection of rooms), where each map tile is.
ResetAllGlobalVariables()

Music_loop(ost_startscrn,97.784, 168.898)








global.doorpath1 = rm_trueintro_opening_TEXT

if (instance_exists(obj_scrn_roomtransition))
{
	instance_destroy(obj_scrn_roomtransition)
}

if (instance_exists(obj_player))
{
	with(obj_player)
	{
		State_machine_switch_state(Idle)	
	}
}
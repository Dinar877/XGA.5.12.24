/// @description Insert description here
// You can write your code in this editor
if(layer_exists(layer_get_id("Inst_level_0")))
{
    layer=layer_get_id("Inst_level_0");
}

room_persistent = false;

if (global.loading_random_room = 1)
{
	Positioning_Player_Loading_Anyroom()
	
	global.loading_random_room = 0
}


if (global.darkeater_roomN > 0)
{
	global.darkeater_roomN--
}


//xga respawning it if player tries to despawn him abusing room transitions
if (room != global.darkeater_saved_state[8])
&& ((global.doorpath1 = global.darkeater_saved_state[8]) or (global.doorpath2 = global.darkeater_saved_state[8])
or (global.doorpath3 = global.darkeater_saved_state[8]) or (global.doorpath4 = global.darkeater_saved_state[8])
or (global.doorpath5 = global.darkeater_saved_state[8]) or (global.doorpath6 = global.darkeater_saved_state[8])
or (global.doorpath7 = global.darkeater_saved_state[8]) or (global.doorpath8 = global.darkeater_saved_state[8]))
&& (global.darkeater_active == 0)
&& (global.darkeater_saved_state_xga_has_spawned = 1)
&& (global.darkeater_saved_state_room_counter == 0)
&& (global.darkeater_saved_state_room_nextdoor_id = 0)
{
	global.darkeater_saved_state_room_nextdoor_id = room
}
else if (global.darkeater_saved_state_room_counter < 2) && (global.darkeater_saved_state_xga_has_spawned = 1)
&& (global.darkeater_active == 0)
&& (room != global.darkeater_saved_state[8])
&& (room != global.darkeater_saved_state_room_nextdoor_id)
{
	global.darkeater_saved_state_room_counter++
}
else if (global.darkeater_saved_state_room_counter >= 2) && (global.darkeater_saved_state_xga_has_spawned = 1)
&& (global.darkeater_active == 0)
&& (room != global.darkeater_saved_state[8])
&& (room != global.darkeater_saved_state_room_nextdoor_id)
{
	global.darkeater_saved_state_room_counter = 0
	global.darkeater_saved_state_xga_has_spawned = 0
	global.darkeater_saved_state_room_nextdoor_id = 0
}
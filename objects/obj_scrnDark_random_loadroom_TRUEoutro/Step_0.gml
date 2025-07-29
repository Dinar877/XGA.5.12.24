/// @description Insert description here
// You can write your code in this editor
image_alpha += 0.015;

if (image_alpha >= 1)
{
	instance_activate_all()
	
	if (global.bossblockers[bossblockers.bugspider] = true) && (global.bossblockers[bossblockers.robospider] = false) //cutscene elevator corruption 1
	&& (global.cutsceneID[Cutscenes.elevatorCorruption1] = false)
	&& (room = rm_elevator_sector1)
	{
		room_goto(rm_cutscene_elevator_1)
	}
	else if (global.bossblockers[bossblockers.bugspider] = true) && (global.bossblockers[bossblockers.robospider] = true) //cutscene elevator corruption 2
	&& (global.cutsceneID[Cutscenes.elevatorCorruption2] = false)
	&& (room = rm_elevator_sector4)
	{
		room_goto(rm_cutscene_elevator_4)
	}
	else room_goto(rm_sectortransitioning_left_generic) //normal transition
}
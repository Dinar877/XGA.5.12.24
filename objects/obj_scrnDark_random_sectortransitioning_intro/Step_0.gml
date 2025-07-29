/// @description Insert description here
// You can write your code in this editor
if (room != rm_cutscene_elevator_1) && (room != rm_cutscene_elevator_4)
{
	timer += 0.01;
}
else if (room == rm_cutscene_elevator_1) //cutscene elevator corruption 1
&& (global.bossblockers[bossblockers.bugspider] = true) && (global.bossblockers[bossblockers.robospider] = false) 
&& (global.cutsceneID[Cutscenes.elevatorCorruption1] = true)
{
	timer += 0.01;
}
else if (room == rm_cutscene_elevator_4) //cutscene elevator corruption 2
&& (global.bossblockers[bossblockers.bugspider] = true) && (global.bossblockers[bossblockers.robospider] = true) 
&& (global.cutsceneID[Cutscenes.elevatorCorruption2] = true)
{
	timer += 0.01;
}


if (timer >= 1)
{

	image_alpha += 0.025;

	if (image_alpha >= 1)
	{
		instance_activate_all()
		audio_stop_sound(snd_tram_going)
		room_goto(global.sector_next_left)
	}

}
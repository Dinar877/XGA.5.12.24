switch1 = 0;
timer = 0;
sndID = -1;
sndSwitch = 0;

//change to second animation instead for second corruption cutscene
if (room == rm_cutscene_elevator_4) 
{
	sprite_index = spr_cutscene_player_corruption2;
}

Gamepad_init_variables()
Gamepad_variables()
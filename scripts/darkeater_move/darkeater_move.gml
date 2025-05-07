function darkeater_move() {

	state1 = darkeater_move

	//if player is higher
	if (pathYpos < y) && (x < pathXpos) && (jump_stopper0 = 0)
	{
		hspd = 4;
		vspd = -5;
		jump_stopper0 = 1
		State_machine_switch_state(darkeater_fall)
	}
	else if (pathYpos < y) && (x > pathXpos) && (jump_stopper0 = 0)
	{
		hspd = -4;
		vspd = -5;
		jump_stopper0 = 1
		State_machine_switch_state(darkeater_fall)
	}


}

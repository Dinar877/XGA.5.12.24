function Jump_after_wj() {
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	    global.hurt = 0;
	}

	jump = 1;
	global.grounded = 0;
	global.jumpingdm = 1;



	hspd = (global.facingDir*2);

	//jump height
	if (enemy_slowdownswitch = 0)
	{
		vspd = jump_speed;
	}
	else if (water_effect = 1)
	{
		vspd = 1;	
	}
	else if (enemy_slowdownswitch = 1)
	{
		vspd = jump_speed_reduced;
	}


	//go to falling state
	State_machine_switch_state(Falling);
}

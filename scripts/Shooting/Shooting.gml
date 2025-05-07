function Shooting() {
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}
	
	if (global.shoot = 0)
	{
		State_machine_switch_state(Idle);
		exit	
	}

	//shot animation when done
	with(obj_blast_effect)
	{
		if (sprite_index != -1)
		{
			if (image_index >= 5)
			{
				with(obj_player)
				{
				    global.shoot = 0;
		
				    stopper_bullet_creation = 0;
				    limit = 0;
					
					State_machine_switch_state(Idle);
					exit
				}
			}
		}
	}

	global.grounded = 1;
	global.jumping = 0;
	global.turning = 0;



}

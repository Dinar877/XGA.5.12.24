function Crouch_shoot() {
	//if no health, reset game
	//global.shoot = 0;
	
	
	//exit if not shooting anything
	if (global.shoot = 0)
	{
		State_machine_switch_state(Crouching);
		exit	
	}

	if (global.health1 <= 0)
	{
	    sprite_index = spr_player;
		with(obj_camera)
			{
				yspin = -4;
			}
	    y -= 4;
	    global.crouching = 0;
	    State_machine_switch_state(Dead);
	}

	//if less health, go to hurt state
	if (global.hurt = 1)
	{
	    sprite_index = spr_player;
		with(obj_camera)
			{
				yspin = -4;
			}
	    y -= 4;
	    global.crouching = 0;
	    State_machine_switch_state(Hurt);
	}

	sprite_index = spr_player_crouch;


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
					
					State_machine_switch_state(Crouching);
					exit
				}
			}
		}
	}






}

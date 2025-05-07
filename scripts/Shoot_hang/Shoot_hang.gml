function Shoot_hang() {
	//if no health, reset game
	if (global.health1 <= 0)
	{
	    State_machine_switch_state(Dead);
	}
	
	if (global.shoot = 0)
	{
		State_machine_switch_state(Ledge_grab);
		exit	
	}


	//shooting animations
	with(object_player2_0_sprites)
	{
		if (round(image_index) >= image_number-1) //go back to idle
		{
			if (global.facingDir < 0)
			{
				if (global.aiming_forward > 0)
				{
					sprite_index = spr_hangshoot_idle_right
				}
				else if (global.aiming_down > 0)
				{
					sprite_index = spr_hangshoot_idle_right_down
				}
				else if (global.aiming_truedown > 0)
				{
					sprite_index = spr_hangshoot_idle_right_Tdown
				}
				else if (global.aiming_up > 0)
				{
					sprite_index = spr_hangshoot_idle_right_up
				}
				else if (global.aiming_trueup > 0)
				{
					sprite_index = spr_hangshoot_idle_right_Tup
				}
			}
			else if (global.facingDir > 0)
			{
				if (global.aiming_forward > 0)
				{
					sprite_index = spr_hangshoot_idle_left
				}
				else if (global.aiming_down > 0)
				{
					sprite_index = spr_hangshoot_idle_left_down
				}
				else if (global.aiming_truedown > 0)
				{
					sprite_index = spr_hangshoot_idle_left_Tdown
				}
				else if (global.aiming_up > 0)
				{
					sprite_index = spr_hangshoot_idle_left_up
				}
				else if (global.aiming_trueup > 0)
				{
					sprite_index = spr_hangshoot_idle_left_Tup
				}
			}
		}
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
	
	
					with(object_player2_0_sprites)
					{
						image_index = 1
						image_speed = 0
					}
					global.image_speed_lockdown = 1
					State_machine_switch_state(Ledge_grab);
					exit
				}
			}
		}
	}


}

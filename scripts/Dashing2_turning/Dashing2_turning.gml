function Dashing2_turning() {
	hspd = 0;
	
	vspd_wind = 0
	
	dash2timer -= 0.1;
	global.turning = 0;
	global.turning_dash2 = 1;
	global.lockdown_facingDir = 1;


	if ((dash2timer > 0) && (global.turning_dash2))
	{
		with(object_player2_0_sprites)
		{
			started_dash2 = 0;
			if (global.facingDir = -1)
			{
				if (round(image_index) >= image_number - 1) && (started_dashturn = 0)
				{
					sprite_index = spr_player_dash2_turnL2R;
					image_speed = 1;
					image_index = 0;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 1;
				}
				if (round(image_index) < image_number - 1) && (started_dashturn = 0)
				{
					sprite_index = spr_player_dash2_turnL2R;
					image_index = 0;
					image_speed = 1;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 1;
				}
				if (round(image_index) < image_number - 1) && (started_dashturn = 1)
				{
					sprite_index = spr_player_dash2_turnL2R;
					image_speed = 1;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 1;
				}
				if (round(image_index) >= image_number - 1) && (started_dashturn = 1)
				{
					sprite_index = spr_player_dash2_beginR1;
					image_index = 6;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 0;
		
					if (instance_exists(obj_player_dashspark))
					{
						with(obj_player_dashspark)
						{
							image_index = 0
						}
					}
		
					with(obj_player)
					{
				 
						State_machine_switch_state(Dashing2_use);
						global.facingDir = 1;
						global.turning_dash2 = 0;
						global.lockdown_facingDir = 0;
						if (instance_exists(obj_player_dashspark))
						{
							with(obj_player_dashspark)
							{
								image_speed = 1
								image_alpha = 0.8
								sprite_index = spr_dashspark_right
							}
						}
					}
				}
			}
			if (global.facingDir = 1)
			{
				if (round(image_index) >= image_number - 1) && (started_dashturn = 0)
				{
					sprite_index = spr_player_dash2_turnR2L;
					image_index = 0;
					image_speed = 1;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 1;
				}
				if (round(image_index) < image_number - 1) && (started_dashturn = 0)
				{
					sprite_index = spr_player_dash2_turnR2L;
					image_index = 0;
					image_speed = 1;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 1;
				}
				if (round(image_index) < image_number - 1) && (started_dashturn = 1)
				{
					sprite_index = spr_player_dash2_turnR2L;
					image_speed = 1;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 1;
				}
				if (round(image_index) >= image_number - 1) && (started_dashturn = 1)
				{
					sprite_index = spr_player_dash2_beginL;
					image_index = 6;
					y = obj_player.y+1;
				    x = obj_player.x;
					started_dashturn = 0;
		
					if (instance_exists(obj_player_dashspark))
					{
						with(obj_player_dashspark)
						{
							image_index = 0
						}
					}
		
					with(obj_player)
					{
				 
						State_machine_switch_state(Dashing2_use);
						global.facingDir = -1;
						global.turning_dash2 = 0;
						global.lockdown_facingDir = 0;
						if (instance_exists(obj_player_dashspark))
						{
							with(obj_player_dashspark)
							{
								image_speed = 1
								image_alpha = 0.8
								sprite_index = spr_dashspark_left
							}
						}
					}
				}
			}
		}
	}

	if (dash2timer <= 0)
	{
		timer_dashing_hspd = 0;
		stopper_dashing_afterimages = 0;
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.dash2_spark = 0
		global.turning_dash2 = 0;
		global.lockdown_facingDir = 0;
		if (instance_exists(obj_player_dashspark))
		{
			with(obj_player_dashspark)
			{
				instance_destroy()
			}
		}
		if (input_horizontal == 0)
		{
			State_machine_switch_state(Idle);
		}
		else if (input_horizontal != 0)
		{
			State_machine_switch_state(Move);
		}
	}


}

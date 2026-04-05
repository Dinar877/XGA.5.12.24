/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.pause_player = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1) or (global.navigation_effect = 1)
or (global.upgrade_process_data = 1) or (global.upgrade_process = 1)
or (global.corelock_engage = 1)
or (global.stopper_2ndscrnshot = 1)
or (global.loading_startgame = 1)
or (global.room_transition_prep == 1) or (global.room_y == 1)
{
	exit;
}


if (active == true)
{
	if (imageSpeed < imageSpeedLimit)	
	{
		imageSpeed += (1/60)
		FadeNow += ((1/60)/imageSpeedLimit)
		image_speed = imageSpeed
	}
	else if (!instance_exists(obj_scc_globe_lazer)) && (!instance_exists(obj_scrnDark_random_loadroom_intro))
	&& (!instance_exists(obj_scrnDark_random_loadroom_outro))
	{
		image_speed = imageSpeedLimit
		instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_scc_globe_lazer)
	}
}

if (active = false)
{
	Gamepad_variables()
	Npc_pressjump_step()
	
	
	if (instance_exists(obj_player))
	{
		//talk
		if (place_meeting(x,y,obj_player)) && (jump_pressed)
		&& (!instance_exists(obj_scrnDark_navigational))
		&& ((obj_player.state == (Idle)) or (obj_player.state == (Idle_landing)) or (obj_player.state == (Move))  or (obj_player.state == (Jumping)))
		{
			instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
			instance_create_layer(__view_get( e__VW.XView, 0 ),obj_camera.y-80,layer_get_id("Inst_healthui"),obj_scrnDark_navigational2_test1);
			with(obj_scrnDark_navigational2_test1)
			{
				spawningID = obj_text_spawning_SCC
			}
			
			with(obj_player)
			{	
				
				//get unstuck out of blocks
				if (place_meeting(x,y,obj_block))
				{
					while (place_meeting(x,y,obj_block))
					{
						y = floor(y) - 1;	
					}
				}
				
				hspd = 0;
				vspd = 0;
				
				
				
				State_machine_switch_state(Idle);
				
				if (instance_exists(obj_player_dashspark))
				{
					instance_destroy(obj_player_dashspark);
				}
				
				if (instance_exists(obj_player_sword_hitbox))
				{
					instance_destroy(obj_player_sword_hitbox);
				}
			}

			
			global.charging = 0
			global.charge_ready = 0
			global.nanoshield = 0
			global.invisibility = 0
			global.nuclearblast = 0
			global.shockwave = 0
			
			global.dash2 = 0
			global.dash2_spark = 0
			global.dashbegin2 = 0
			
			if (global.facingDir > 0)
			{
				with(object_player2_0_sprites)
				{
					sprite_index = spr_stand_right_2	
				}
			}
			else if (global.facingDir < 0)
			{
				with(object_player2_0_sprites)
				{
					sprite_index = spr_stand_left_2	
				}
			}
		
			global.upgrade_process_data = 1;
		}
	}
}
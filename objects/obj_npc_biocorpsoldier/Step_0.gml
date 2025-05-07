/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

scr_gamepad_test()
Gamepad_variables()


//manages "pressjump" object
Npc_pressjump_step();


//TALKING. TURNING ANIMATIONS.
if (instance_exists(obj_player))
{
	//talk
	if (place_meeting(x,y,obj_player)) && (jump_pressed)
	&& (!instance_exists(obj_scrnDark_navigational))
	&& (obj_player.state != (Fall_shoot)) && (obj_player.state != (Jumping)) && (obj_player.state != (Falling)) && (obj_player.state != (Shooting))
	{
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
		instance_create_layer(__view_get( e__VW.XView, 0 ),obj_camera.y-80,layer_get_id("Inst_healthui"),obj_scrnDark_navigational2_test1);
		with(obj_scrnDark_navigational2_test1)
		{
			spawningID = obj_text_spawning_npc_biocorpsoldier
		}
		
		if (obj_player.state = Move)
			{
				with(obj_player)
				{
					State_machine_switch_state(Idle)
				}
			}
			
		global.charging = 0
		global.charge_ready = 0
		global.nanoshield = 0
		global.invisibility = 0
		global.nuclearblast = 0
		global.shockwave = 0
			
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
	
	
	//turning
	if (sprite_index = spr_biocorpsoldier_stand_left) && (obj_player.x > self.x)
	{
		sprite_index = spr_biocorpsoldier_turn_l2r;	
		image_index = 0
	}
	else if (sprite_index = spr_biocorpsoldier_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_biocorpsoldier_stand_right;	
	}

	if (sprite_index = spr_biocorpsoldier_stand_right) && (obj_player.x < self.x)
	{
		sprite_index = spr_biocorpsoldier_turn_r2l;	
		image_index = 0
	}
	else if (sprite_index = spr_biocorpsoldier_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_biocorpsoldier_stand_left;	
	}
}
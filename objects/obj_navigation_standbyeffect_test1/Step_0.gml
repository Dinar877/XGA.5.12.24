/// @description Insert description here
// You can write your code in this editor
if (!global.navigation) && (!global.upgrade_process_data)
{
	if (place_meeting(x,y,obj_player)) && (image_alpha < 0.8)
	{
		image_alpha += 0.01;
		
		if (sprite_index = spr_navigation_lightpillar_help)
		{
			sprite_index = spr_navigation_lightpillar_struggling
			image_alpha = 0
		}
	}
	if (place_meeting(x,y,obj_player)) && (image_alpha >= 0.8)
	{
		if (instance_exists(obj_nuclearblast_scrneffect))
		{
			instance_destroy(obj_nuclearblast_scrneffect)	
		}
		
		if (global.spacestation_active <= 0) && (room != rm_ENDGAME_NAV)
			{
				with(obj_player)
				{
					input_horizontal = 0
					jump_pressed = 0
					global.charging = 0
					global.charge_ready = 0
					global.nanoshield = 0
					global.invisibility = 0
					global.nuclearblast = 0
					global.shockwave = 0
					if (state = Move)
					{
						State_machine_switch_state(Idle)
					}
				}
				
				if (obj_player.state = Idle)
				{
					savebegin_timer = 0;
					global.upgrade_process_data = 1
					global.nanoshield = 0
					global.invisibility = 0
					global.nuclearblast = 0
					global.shockwave = 0
					instance_deactivate_object(obj_link_healthUI)
					instance_deactivate_object(obj_link_map)
					instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
					instance_create_layer(__view_get( e__VW.XView, 0 ),obj_camera.y-80,layer_get_id("Inst_healthui"),obj_scrnDark_lockdown);
					instance_destroy();
				}
			}
		else if (global.spacestation_active > 0) or (room = rm_ENDGAME_NAV)
		{
			with(obj_player)
			{
				input_horizontal = 0
				jump_pressed = 0
				global.charging = 0
				global.charge_ready = 0
				global.nanoshield = 0
				global.invisibility = 0
				global.nuclearblast = 0
				if (state = Move)
				{
					State_machine_switch_state(Idle)
				}
			}
			if (obj_player.state = Idle)
			{
				savebegin_timer = 0;
				global.navigation_effect = 1; 
				global.nanoshield = 0
				global.invisibility = 0
				global.nuclearblast = 0
				with(object_player2_0_sprites)
				{
					textspawnerID = other.textspawnerID;
				}
				instance_destroy();
			}
		}
	}

	if (!place_meeting(x,y,obj_player)) && (image_alpha > 0)
	{
		image_alpha -= 0.01;	
		
		if (sprite_index = spr_navigation_lightpillar_struggling)
		{
			sprite_index = spr_navigation_lightpillar_help
		}
	}
}
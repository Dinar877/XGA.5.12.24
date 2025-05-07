/// @description Insert description here
// You can write your code in this editor
if (!global.navigation) && (!global.upgrade_process_data)
{
	if (place_meeting(x,y,obj_player)) && (image_alpha < 0.8)
	{
		image_alpha += 0.01;
	}
	if (place_meeting(x,y,obj_player)) && (image_alpha >= 0.8)
	{
		if (global.spacestation_active <= 0)
			{
				with(obj_player)
				{
					input_horizontal = 0
					jump_pressed = 0
					global.charging = 0
					global.charge_ready = 0
					if (state = Move)
					{
						State_machine_switch_state(Idle)
					}
				}
				
				if (obj_player.state = Idle)
				{
					savebegin_timer = 0;
					global.upgrade_process_data = 1
					instance_deactivate_object(obj_link_healthUI)
					instance_deactivate_object(obj_link_map)
					instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
					instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui"),textspawnerID);
					instance_destroy();
				}
			}
		else
		{
			with(obj_player)
			{
				input_horizontal = 0
				jump_pressed = 0
				global.charging = 0
				global.charge_ready = 0
				if (state = Move)
				{
					State_machine_switch_state(Idle)
				}
			}
			
			if (obj_player.state = Idle)
			{
				savebegin_timer = 0;
				global.navigation_effect = 1; 
				instance_destroy();
			}
		}
	}

	if (!place_meeting(x,y,obj_player)) && (image_alpha > 0)
	{
		image_alpha -= 0.01;	
	}
}


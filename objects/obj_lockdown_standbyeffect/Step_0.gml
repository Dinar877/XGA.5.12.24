/// @description Insert description here
// You can write your code in this editor
if (!global.corelock_engage)
{
	if (place_meeting(x,y,obj_player)) && (image_alpha < 0.8)
	{
		image_alpha += 0.01;
	}
	if (place_meeting(x,y,obj_player)) && (image_alpha >= 0.8)
	{
		if (instance_exists(obj_nuclearblast_scrneffect))
		{
			instance_destroy(obj_nuclearblast_scrneffect)	
		}
		
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
				else if (state = Shooting)
				{
					State_machine_switch_state(Idle)
				}
			}
		if (obj_player.state = Idle)
			{
				savebegin_timer = 0;
				global.corelock_engage = 1;
				//global.upgrade_process = 1
				global.nanoshield = 0
				global.invisibility = 0
				global.nuclearblast = 0
				global.upgrade_process_data_active = 1
				global.upgrade_process_data = 1
				with(object_player2_0_sprites)
				{
					textspawnerID = other.textspawnerID;
				}
				
				if (textspawnerID = "xvision")
				{
					global.corelock_engage_xvision = 1	
				}
				
				instance_destroy();
			}
	}

	if (!place_meeting(x,y,obj_player)) && (image_alpha > 0)
	{
		image_alpha -= 0.01;	
	}
}
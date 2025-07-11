/// @description Insert description here
// You can write your code in this editor
if (instance_number(textyID) < 1)
{
		instance_destroy();
		
		with(obj_scrnDark_navigational)
		{
			instance_destroy()	
		}
		
		if (instance_exists(obj_scrnDark_navigational2))
		{
			with(obj_scrnDark_navigational2)
			{
				image_index = 0;
				sprite_index = spr_bg_navigational2_rev;
				image_speed = 1;
			}
		}
	
		if (instance_exists(obj_scrnDark_navigational2_test1))
		{
			with(obj_scrnDark_navigational2_test1)
			{
				if (spawningID = obj_text_spawning_BH)
				{
					instance_destroy();
				}
				else
				{
					image_index = 0;
					sprite_index = spr_bg_navigational2_rev;
					image_speed = 1;
				}
			}	
		}
		
		if (instance_exists(obj_scrnDark_lockdown))
		{
			with(obj_scrnDark_lockdown)
			{
				image_index = 0;
				sprite_index = spr_bg_navigational2_rev;
				image_speed = 1;
			}	
		}
		
		
		//BH
		if (instance_exists(obj_bh))
		{
			if (obj_bh.newTextAvailable = 3)
			{
				global.cutsceneID[Cutscenes.blackholetalk1] = 1;	
				instance_create_layer(644,520,layer_get_id("Inst_level_0"),obj_bh_spawn_sword);
			}
			else if (obj_bh.newTextAvailable = 4)
			{
				global.cutsceneID[Cutscenes.blackholetalk2] = 1;	
			}
			else if (obj_bh.newTextAvailable = 5)
			{
				global.cutsceneID[Cutscenes.blackholetalk3] = 1;	
			}
		}
		
		
	
	
	
		if (instance_exists(obj_texty_generic))
		{
			instance_destroy(obj_texty_generic)
		}
		if (instance_exists(obj_texty_generic_shorter))
		{
			instance_destroy(obj_texty_generic_shorter)
		}
		if (instance_exists(obj_texty_marker))
		{
			instance_destroy(obj_texty_marker)
		}
		if (instance_exists(obj_texty))
		{
			instance_destroy(obj_texty)
		}
		if (instance_exists(obj_texty_heading))
		{
			instance_destroy(obj_texty_heading)
		}
		
		//npsx
		if (instance_exists(obj_text_spawning_npc_scientist_1))
		{
			with(obj_text_spawning_npc_scientist_1)
			{
				instance_destroy()	
			}
		}
		//npsx
		if (instance_exists(obj_text_spawning_npc_scientist_2))
		{
			with(obj_text_spawning_npc_scientist_2)
			{
				instance_destroy()	
			}
		}
		
		//nav cutscenes
		if (instance_exists(obj_text_spawning_biome1_1))
		{
			with(obj_text_spawning_biome1_1)
			{
				instance_destroy()	
			}
		}
		else if (instance_exists(obj_text_spawning_biome1_2))
		{
			with(obj_text_spawning_biome1_2)
			{
				instance_destroy()	
			}
		}
		else if (instance_exists(obj_text_spawning_0_1))
		{
			with(obj_text_spawning_0_1)
			{
				instance_destroy()	
			}
		}
	
		if (instance_exists(obj_text_spawning_arrow))
		{
			with(obj_text_spawning_arrow)
			{
				instance_destroy()	
			}
		}
	
		with(obj_navigation_standbyeffect)
		{
			instance_destroy()	
		}
		
		global.navigation = 0;
		global.navigation_effect = 0;
		global.pause_player = 0;
		global.upgrade_process_data = 0
		instance_activate_object(obj_link_healthUI)
		instance_activate_object(obj_link_map)	
		
		with(obj_player)
		{
			jump = 0
			jump_pressed = 0
		}
}
	
	
instance_destroy();
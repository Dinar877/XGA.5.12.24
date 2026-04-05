/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[Cutscenes.sc_key_aquired] = 1)
{
	instance_destroy()
	exit
}

if (place_meeting(x,y,obj_player))
{
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
	instance_create_layer(__view_get( e__VW.XView, 0 ),obj_camera.y-80,layer_get_id("Inst_healthui"),obj_scrnDark_navigational2_test1);
	with(obj_scrnDark_navigational2_test1)
	{
		spawningID = obj_text_spawning_SC
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

		
	global.upgrade_process_data = 1;
	
	audio_stop_sound(snd_swordswoosh)
	audio_stop_sound(snd_player_normaljump)
	audio_stop_sound(snd_player_spinjump)
	audio_stop_sound(snd_player_spinjump_shorter)
	audio_play_sound(snd_pickup1,1000,false,global.sfx_volume)
	
	instance_destroy()
}
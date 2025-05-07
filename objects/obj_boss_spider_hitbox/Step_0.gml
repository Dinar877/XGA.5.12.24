/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.room_transition_down = 1) or (global.room_transition_up = 1)
or (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1)
{
	exit;	
}

if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	exit
}

if (collision_rectangle(x-140,y,x+140,y,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning))
{
	with(object_player2_0_sprites)
	{
		image_speed = 0;	
	}

	
	image_speed = 0;
	
	warning = 1;
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_warning);
	global.boss_warning = 1;
	
	if ((audio_is_playing(global.sector_music)) > 0)
		{
			audio_stop_sound(global.sector_music)
		}
		
	//corelock boss door shut
	if (instance_exists(obj_corelock_boss))
	{
		with(obj_corelock_boss)
		{
			switch1 = 1	
		}
	}
}

if (inactive = 0) && (deathanim == 0)
{
	State_machine_execute()
}
global.mapgrid_yZeroMove = 0
global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1

global.doorpath2 = rm_10_10_1

if (global.cutscene = 1)
{
	instance_deactivate_all(true)
	
	instance_activate_object(obj_door_border_left)
	
	instance_activate_object(obj_tureopening_debris)
	instance_activate_object(obj_tureopening_debris1)
	instance_activate_object(obj_tureopening_debris_other)
	instance_activate_object(obj_tureopening_debris_other1)
	
	instance_activate_object(obj_camera_intro)

	instance_activate_object(obj_scrnDark_trueopening_wakeup)
	instance_activate_object(obj_trueopening_player_wakeup)
	instance_activate_object(obj_darkness_effect_stationnotactive)
	
	instance_activate_object(obj_xga_replicator_bg1_shattered)
	instance_activate_object(obj_xga_replicator_bg2_shattered)
	instance_activate_object(obj_marker_9_10_1)
	
	__view_set( e__VW.Object, 0, obj_camera_intro);
}
else
{
	instance_destroy(obj_scrnDark_trueopening_wakeup)
	instance_destroy(obj_trueopening_player_wakeup)
	instance_destroy(obj_camera_intro)
}

global.sector_active = 0;
global.mapgrid_xZeroMove = 1


global.mapgrid_startroomx = 0
global.mapgrid_startroomy = 9
global.mapgrid_totalCheckers = 1

global.wm_found[WMdiscovered.v] = true;

global.sector_active = 6

global.doorpath2 = rm_V_1_9_2

if (global.cutsceneID[Cutscenes.voltEngineGet] == 0)
{
	global.cutscene = 1;
	
	__view_set( e__VW.Object, 0, obj_camera_intro);
	instance_deactivate_all(true)
	
	instance_activate_object(obj_spawner)

	instance_activate_object(obj_camera_intro)
	instance_activate_object(obj_scrnDark_trueintro_fadeout)
	instance_activate_object(obj_cutscene_voltsuit_playertrap)
	
	
	instance_activate_object(obj_block2)
	instance_activate_object(obj_slope2_left)
	instance_activate_object(obj_corelock)
}
else
{
	instance_destroy(obj_scrnDark_trueintro_fadeout)
	instance_destroy(obj_camera_intro)
	instance_destroy(obj_cutscene_voltsuit_playertrap)
}
global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1
global.mapgrid_yZeroMove = 1

global.mapgrid_startroomx = 0
global.mapgrid_startroomy = 0
global.mapgrid_totalCheckers = 1



global.sector_active = 5

global.doorpath2 = 1

if (global.cutsceneID[Cutscenes.voltEngineGet] == false)
{
	global.cutscene = true;
	
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
	
	obj_camera.x = 480;
	obj_camera.y = 277;
}
global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1
global.mapgrid_yZeroMove = 1

global.doorpath2 = rm_10_10_1
//global.doorpath2 = rm_11_7_6

if (global.cutscene = 1)
{
	__view_set( e__VW.Object, 0, obj_camera_intro);
	instance_deactivate_all(true)

	instance_activate_object(obj_cryounit_bg)
	instance_activate_object(obj_cryounit_front)
	instance_activate_object(obj_cryounit_player)
	
	instance_activate_object(obj_door_normal_left)
	instance_activate_object(object_bg_restrictedarea1)

	instance_activate_object(obj_scrnDark_random_loadroom_fadeinandout)
	instance_activate_object(obj_cryounit)
	instance_activate_object(obj_camera_intro)
	instance_activate_object(obj_scrnDark_opening_9_10_1_outro)
	instance_activate_object(obj_marker_9_10_1)
}
else
{
	instance_destroy(obj_scrnDark_opening_9_10_1_outro)
	instance_destroy(obj_camera_intro)
	
	obj_camera.x = 480;
	obj_camera.y = 277;
}

global.sector_active = 0;

/*
if (!instance_exists(obj_aud_memoryarea))
{
	instance_create(0,0,obj_aud_memoryarea)
	global.sector_music = obj_aud_memoryarea
}
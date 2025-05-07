global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1
global.mapgrid_yZeroMove = 1

global.sector_active = -1

global.doorpath2 = rm_trueintro_1_1

if (global.cutscene = 1)
{
	__view_set( e__VW.Object, 0, obj_camera_intro);
	instance_deactivate_all(true)

	instance_activate_object(obj_camera_intro)
	instance_activate_object(object_background_bg_spaceG)
	instance_activate_object(obj_door_normal_left)
	
	instance_activate_object(obj_scrnDark_trueintro_fadeout)
	instance_activate_object(obj_trueintro_light)
	instance_activate_object(obj_trueintro_player_glow)
	
	instance_activate_object(obj_trueintro_spraypipe)
	instance_activate_object(obj_npc_scientist_1)
	instance_activate_object(obj_npc_scientist_2)
	instance_activate_object(obj_npc_camera)

	
	instance_activate_object(obj_marker_trueintro_0_0)
}
else
{
	instance_destroy(obj_scrnDark_trueintro_fadeout)
	instance_destroy(obj_camera_intro)
	
	with(obj_trueintro_spraypipe)
	{
		sprite_index = spr_trueintro_spraypipe_end
		image_index = image_number-1
	}
	
	with(obj_trueintro_player_glow)
	{
		sprite_index = spr_trueintro_player_getup_2_bg
	}
	
	obj_camera.x = 480;
	obj_camera.y = 277;
}
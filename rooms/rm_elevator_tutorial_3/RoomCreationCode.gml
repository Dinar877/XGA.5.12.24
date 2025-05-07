global.mapgrid_1x1 = 1;
global.mapgrid_xZeroMove = 1;
global.mapgrid_yZeroMove = 1;
global.doorpath6 = rm_11_7_6;
global.spacestation_active = 1;

global.sector_active = 0
global.sector_next_left = rm_S4_elevator
global.sector_next_right = 0;

obj_camera.x = 480;
obj_camera.y = 277;

if (global.sector_transition > 0)
{
	obj_player.x = 478
	obj_player.y = 277
	object_player2_0_sprites.x = 478
	object_player2_0_sprites.y = 277
	with(obj_player)
	{
		State_machine_switch_state(Idle)	
	}
	global.sector_transition = 0;
	global.pause_player = 0;
	global.pause_elevator = 0;
	instance_activate_all()
	
	with(obj_maptile_tile)
	{
		if (sectortile != global.sector_active)
		{
			instance_deactivate_object(self)	
		}
	}
}


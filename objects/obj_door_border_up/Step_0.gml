/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) && (started == 0)
{
	started = 1;
	global.room_transition_up = 1
	with(obj_player)
		{
			global.state = state
			State_machine_switch_state(Freeze);
					if (instance_exists(obj_scrn_roomtransition))
							{
								with(obj_scrn_roomtransition)
								{
									instance_destroy();
								}
							}
					if (instance_exists(obj_afterimage))
							{
								with(obj_afterimage)
								{
								instance_destroy();
								}
							}
							
					if (!instance_exists(obj_scrn_roomtransition))
							{
								if (global.mapgrid_xZeroMove == 1) && (global.mapgrid_1x1 == 1)
								{
									instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
								}
								else instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
							}
		}
}

if (started = 1) && (global.room_transition_up = 1) && (instance_exists(obj_scrn_roomtransition))
{
	if (obj_scrn_roomtransition.FadeNow >= 1.0)
	{
		if (obj_player.y < obj_door_border_up.y+65) && (obj_player.y < obj_door_border_up.y+80)
		{
			obj_player.y += 12;
			object_player2_0_sprites.y += 12;
		}
		else if (obj_player.y >= obj_door_border_up.y+65) && (obj_player.y < obj_door_border_up.y+80)
		{
			obj_player.y += 1;
			object_player2_0_sprites.y += 1;
		}
		else if (obj_player.y >= obj_door_border_up.y+80)
		{
						instance_activate_object(obj_player);
						instance_activate_object(object_player2_0_sprites);
					    instance_activate_object(obj_camera);
						if (global.mapgrid_1x1 == 1)
						{
							global.mapgrid_1x1 = 0;
						}
						if (global.frozen == 1)
						{
							global.frozen = 0;
						}
						if (global.mapgrid_xZeroMove == 1)
						{
							global.mapgrid_xZeroMove = 0;
						}
						if (global.mapgrid_yZeroMove == 1)
						{
							global.mapgrid_yZeroMove = 0;
						}
						room_goto(global.doorpathUP);
		}
	}
}


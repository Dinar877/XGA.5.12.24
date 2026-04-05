// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrn_roomtransitions_whitelisted_objects(){
	
	//player
	instance_activate_object(obj_camera);
	instance_activate_object(obj_camera_stopperL);
	instance_activate_object(obj_camera_stopperR);
	instance_activate_object(object_player2_0_sprites);
	
	
	//doors
	instance_activate_object(obj_door_border_left);
	instance_activate_object(obj_door_border_right);
	instance_activate_object(obj_door_border_left_2);
	instance_activate_object(obj_door_border_right_2);
	instance_activate_object(obj_door_border_left_more);
	instance_activate_object(obj_door_border_right_more);
	instance_activate_object(obj_door_border_left_3);
	instance_activate_object(obj_door_border_right_3);
	
	instance_activate_object(obj_room_transition_l2r1);
	instance_activate_object(obj_room_transition_r2l1);
	instance_activate_object(obj_room_transition_l2r2);
	instance_activate_object(obj_room_transition_r2l2);
	instance_activate_object(obj_room_transition_l2r3);
	instance_activate_object(obj_room_transition_r2l3);
	instance_activate_object(obj_room_transition_l2r4);
	instance_activate_object(obj_room_transition_r2l4);
	
	//ui
	instance_activate_object(obj_link_healthUI);
	instance_activate_object(obj_maptile_tile);
	instance_activate_object(obj_maptile_tile_differentsector);
	instance_activate_object(obj_deathscreennuke_maptile);
	instance_activate_object(obj_link_map);
	instance_activate_object(obj_link_audio);
	
	
	
	
	//misc
	instance_activate_object(obj_sc_clock_manager);
}
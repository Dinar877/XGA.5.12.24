/// @description Insert description here
// You can write your code in this editor
if (global.loading_startgame = 1) && (switch1 == 0)
{
	switch1 = 1;
	with(obj_camera)
	{
		x = 160	
	}
	instance_activate_object(obj_NEWsav_standbyeffect);
	instance_activate_object(obj_NEWsav_bottom);
	instance_activate_object(obj_NEWsav_top);
	instance_create_layer(x-1,y+25,layer_get_id("Inst_scrn"),obj_saver);
	with(obj_NEWsav_bottom)
	{
		instance_create_depth(x+23,y-17,id.depth-1,obj_player_saving)	
		with(obj_player_saving)
		{
			sprite_index = spr_savepillar_playeruseactive	
		}
		instance_create_depth(x+24,y-1,id.depth-2,obj_NEWsav_activepillar)	
		with(obj_NEWsav_activepillar)
		{
			sprite_index = spr_NEWsav_lightpillar_saving_active	
		}
	}
	with(obj_NEWsav_top)
	{
		dontsave = 1
		image_speed = 0;
		image_index = image_number-1
	}
	//instance_deactivate_object(obj_link_healthUI);
	//instance_deactivate_object(obj_link_map);
	instance_deactivate_object(obj_player);
	instance_deactivate_object(object_player2_0_sprites);
	instance_destroy();
}
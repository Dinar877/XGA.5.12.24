/// @description Insert description here
// You can write your code in this editor
if (global.saving == 0)
{
	if (place_meeting(x,y,obj_player)) && (image_alpha < 0.8)
	{
		image_alpha += 0.007;
	}
	if (place_meeting(x,y,obj_player)) && (image_alpha >= 0.8)
	{
		global.saving = 1;
		savebegin_timer = 0;
		ready = 0;
		stopnow = 0;
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
		instance_create_layer(__view_get( e__VW.XView, 0 )+177,__view_get( e__VW.YView, 0 )+55,layer_get_id("Inst_healthui2"),obj_save_text);
		image_alpha = 0;
	}

	if (!place_meeting(x,y,obj_player)) && (image_alpha > 0)
	{
		image_alpha -= 0.01;	
	}
}
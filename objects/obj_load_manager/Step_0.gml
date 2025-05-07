/// @description Insert description here
// You can write your code in this editor
if (room == rm_load) && (switch1 == 0)
{
	switch1 = 1;
	instance_create_layer(0,85,layer_get_id("Inst_healthui2"),obj_savepillar_textunderside);
	instance_deactivate_all(obj_load_manager);
	//instance_activate_object(obj_savepillar_textunderside);
	//instance_activate_object(obj_floatpoint1);
	//instance_activate_object(obj_bg_floatingstation1);
	instance_activate_object(obj_blackhole_bg);
	instance_activate_object(obj_scrn_roomtransition);
	instance_activate_object(obj_scrnDark_random_loadroom);
	//instance_activate_object(obj_scrn_roomtransition);
	instance_activate_object(obj_bg_title1);
	instance_activate_object(obj_bg_title2);
	instance_activate_object(obj_scrnDark_random_loadroom_intro);
}
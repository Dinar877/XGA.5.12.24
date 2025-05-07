/// @description Insert description here
// You can write your code in this editor

//obj map bg 2
if (!instance_exists(obj_pausescrn1))
{
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui_mapborder"),obj_pausescrn1)
	
	//for options menu from title screen
	if (room == rm_load)
	{
		obj_pausescrn1.state = 2;
		obj_pausescrn1.sprite_index = spr_newpausescrn1_noarrows;
	}
}
else if (instance_exists(obj_pausescrn1))
{
	instance_destroy(obj_pausescrn1)
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui_mapborder"),obj_pausescrn1)
	//for options menu from title screen
	if (room == rm_load)
	{
		obj_pausescrn1.state = 2;
		obj_pausescrn1.sprite_index = spr_newpausescrn1_noarrows;
	}
}

//obj map bg 3
if (!instance_exists(obj_map_bg3))
{
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_map_bg3)
}
else if (instance_exists(obj_map_bg3))
{
	instance_destroy(obj_map_bg3)
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_map_bg3)
}

//obj map link controllervariables pause
if (!instance_exists(obj_link_controllervariables_pause))
{
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui_mapborder"),obj_link_controllervariables_pause)
}
else if (instance_exists(obj_link_controllervariables_pause))
{
	instance_destroy(obj_link_controllervariables_pause)
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui_mapborder"),obj_link_controllervariables_pause)
}

//obj pause con
if (!instance_exists(obj_pause_Con))
{
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui_mapborder"),obj_pause_Con)
}
else if (instance_exists(obj_pause_Con))
{
	instance_destroy(obj_pause_Con)
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui_mapborder"),obj_pause_Con)
}
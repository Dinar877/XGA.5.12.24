/// @description Insert description here
// You can write your code in this editor
if (turnOffSwitch = false)
{
	image_alpha += 0.01;
	image_xscale += 0.2;
	image_yscale += 0.2;
}
else if (turnOffSwitch = true)
{
	image_alpha -= 0.015;
	
	if (image_alpha <= 0)
	{
		instance_destroy()
		
		global.cutsceneID[Cutscenes.scc_active] = 1;
		global.cutsceneID[Cutscenes.ssc_scrndarkCutscene] = 1;
		global.cutsceneID[Cutscenes.sc_key_aquired] = 1
		global.sector_active = 6
		global.cutscene_suit = 0
		global.cutscene = 0
		
		room_goto(rm_V_SCC_mainroom)
		
		exit
	}
}
		
		
//turnOff
if (image_xscale >= 20) && (turnOffSwitch = false)
{
	turnOffSwitch = true	

	
	if (!instance_exists(obj_scrnDark_random_loadroom_intro))
	{
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrnDark_random_loadroom_intro);
	}
}


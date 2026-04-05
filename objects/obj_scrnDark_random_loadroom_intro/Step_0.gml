/// @description Insert description here
// You can write your code in this editor
if (room != rm_SC_exit) && (room != rm_V_SCC_mainroom)
{
	image_alpha -= 0.015;
}
else if (room == rm_SC_exit)
or (room == rm_V_SCC_mainroom)
{
	if (!instance_exists(obj_sc_deathscreennuke))
	&& (!instance_exists(obj_scc_deathscreennuke))
	{
		image_alpha -= 0.015;
	}
}

if (image_alpha <= 0)
{
	instance_destroy()	
	
	if (room = rm_V_SCC_mainroom) 
	&& (global.cutsceneID[Cutscenes.sc_key_aquired] = 1)
	&& (global.cutsceneID[Cutscenes.scc_active] = 1)
	&& (global.cutsceneID[Cutscenes.ssc_scrndarkCutscene] = 1)
	{
		global.cutsceneID[Cutscenes.sc_scrndark_cutscene] = 1
	}
}
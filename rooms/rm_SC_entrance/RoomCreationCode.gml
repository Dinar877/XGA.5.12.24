global.mapgrid_startroomx = 6
global.mapgrid_startroomy = 9

global.mapgrid_xZeroMove = 1


global.doorpath2 = rm_SC_7_9_1

global.sector_active = 7

Teleport_Camera(480,270)

if (global.cutsceneID[Cutscenes.ssc_scrndarkCutscene] = false)
{
	global.cutsceneID[Cutscenes.ssc_scrndarkCutscene] = true
	global.cutscene = 0
}
else instance_destroy(obj_scrnDark_random_loadroom_outro)
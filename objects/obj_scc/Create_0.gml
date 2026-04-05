/// @description Insert description here
// You can write your code in this editor
active = false
imageSpeed = 1
imageSpeedLimit = 5

//delete object if already beaten system core
if (global.cutsceneID[Cutscenes.scc_active] == true)
{
	sprite_index = spr_cutscene_V_SCC_off
}
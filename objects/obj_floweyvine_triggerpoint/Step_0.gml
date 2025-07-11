/// @description Insert description here
// You can write your code in this editor
if (global.cutsceneID[Cutscenes.floweyVineTriggerPoint] > 0)
{
	instance_destroy()
}
else if (global.cutsceneID[Cutscenes.floweyVineTriggerPoint] == 0)
{
	image_alpha = 1
}

if (place_meeting(x,y,obj_player))
{	
	global.cutsceneID[Cutscenes.floweyVineTriggerPoint] = 1
	instance_destroy()
}
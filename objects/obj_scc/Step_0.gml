/// @description Insert description here
// You can write your code in this editor
if (active == true)
{
	global.cutscene = 1
	
	if (instance_exists(obj_npc_pressjump))
	{
		instance_destroy(obj_npc_pressjump)	
	}
	
	if (imageSpeed < imageSpeedLimit)	
	{
		imageSpeed += (1/60)
		image_speed = imageSpeed
	}
	else image_speed = imageSpeedLimit
}
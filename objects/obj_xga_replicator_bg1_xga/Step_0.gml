/// @description Insert description here
// You can write your code in this editor

if (on = 1) && (spawn_energycircle = 0)
{
	if FadeNow < 0.3
	{
		FadeNow += (1/60)/22
	}
}



if (on = 0) && (spawn_energycircle = 1)
{
	if FadeNow2 < 0.5
	{
		FadeNow2 += (1/60)/8
	}
	else if (FadeNow2 >= 0.5)
	{
		global.cutscene_trueintro_sparkexchange = 1
		instance_create_layer(x,y,layer_get_id("Inst_healthui_mapborder"),obj_xga_energycircle)
		
		instance_create_layer(obj_camera.x,obj_camera.y,layer_get_id("Inst_healthui_mapborder"),obj_static_scrneffect)
		with(obj_static_scrneffect)
		{
			image_alpha = 0.7
			on = 1
		}
		
		FadeNow2 = 0
		spawn_energycircle = 0
		on = 1
	}
}
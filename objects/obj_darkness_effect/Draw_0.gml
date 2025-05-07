/// @description Insert description here
// You can write your code in this editor
if (image_alpha > 0.0)
{

if (!surface_exists(light_surface2))
{
	light_surface2 = surface_create(660, 320);
}

if (surface_exists(light_surface2))
{
	
	surface_set_target(light_surface2);
	
	if  (!instance_exists(obj_scrn_roomtransition))
	{
		draw_clear_alpha(c_black,image_alpha);
	}
	else if (instance_exists(obj_scrn_roomtransition)) && (global.stopper_2ndscrnshot != 0)
	{
	draw_clear_alpha(c_black,image_alpha);
	}
	else if (instance_exists(obj_scrn_roomtransition)) && (global.stopper_2ndscrnshot == 0)
	{
	draw_clear_alpha(c_black,image_alpha);
	}
	
	
	if (global.corrupted > 0) && (global.xvision <= 0)
	{
	draw_clear_alpha(c_black,image_alpha);
	}
	else if (global.corrupted <= 0) && (global.xvision <= 0)
	{
	draw_clear_alpha(c_black,image_alpha);
	}
	else if (global.corrupted <= 0) && (global.xvision > 0)
	{
	draw_clear_alpha(c_black,image_alpha);
	}
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(spr_light_player_small,0, 330, 160,scale1,scale1,random_range(0,360),c_white,1);

		if (global.xvision > 0) && (global.hang = 0) && (global.climbing = 0)
		&& (global.turning = 0)  && (global.turning_dash2 = 0)  && (global.turningLedge = 0)
		&& (global.jumpingdm = 0) && (switch1 > 0)
		{
			draw_sprite_ext(spr_light_player_xvision_light,0, 330+(xother), 160+(yother),1,1,angleother,c_white,1);	
			switch1 = 0
		}

	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	if (global.climbing == 0) && (instance_exists(obj_player)) && (instance_exists(obj_camera))
	{
		draw_surface(light_surface2, obj_player.x-330, obj_player.y-160-obj_camera.yspin)
	}
	else if (global.climbing == 1) && (instance_exists(obj_player))
	{
		draw_surface(light_surface2, obj_player.x-330+xloc, obj_player.y-160+yloc)
	}
	else if (global.climbing == 0) && (!instance_exists(obj_player))
	{
		draw_surface(light_surface2, x-330, y-160)
	}
	surface_free(light_surface2)
}

}
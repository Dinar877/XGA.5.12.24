/// @description Insert description here
// You can write your code in this editor
if (sectortile != global.sector_active)
{
	exit;	
}

if (global.pause_map = 1) or (global.navigation = 1)
{
	if (sectortile == global.sector_active) && (gotsprite != 0) && (discovered = 1) && ((global.pause_map = 1) or (global.navigation = 1) or ((global.pause_exit > 0) && (global.pause_map > 0) && (global.stopper_2ndscrnshot <= 0)))
	{		
			//shader stuff for flashing white
			if (gotsprite != 0) && (discovered = 1) && ((global.pause_map = 1) or (global.navigation = 1) or ((global.pause_exit > 0) && (global.pause_map > 0) && (global.stopper_2ndscrnshot <= 0)))
			{
				x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10))+global.xleft;
				y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10))+global.yup;

				if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
					{
						onborder = 1
						
						draw_set_alpha(image_alpha)
						shader_set(shd_fade_whitegreen);
						shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
						draw_self()
			
						if (blockerID >= MapTiles_groupDoor_blueleft) && (blockerID <= MapTiles_groupDoor_yellow_right) && (global.doors_redblocker[blockerID2] <= 0)
							{
								draw_sprite_ext(blockerID,0, x, y,1,1,0,c_white,image_alpha)
							}
							
						if (hazardID2 >= MapTiles_autohack) && (hazardID2 <= MapTiles_vine) && (global.doors_redblocker[hazardID_redblockerID] <= 0)
							{
								draw_sprite_ext(hazardID2,0,x,y,1,1,0,c_white,image_alpha)	
							}
						if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
						{
							draw_sprite_ext(spr_itemlocated,inst_item_imageindex,x,y,1,1,0,c_white,image_alpha)	
							inst_item_imageindex += (1/room_speed)
						}
			
						timerfade = 1;
						draw_set_alpha(1)
						shader_reset()
					}
					else
					{
						draw_set_alpha(image_alpha)
						draw_self()
						if (blockerID >= MapTiles_groupDoor_blueleft) && (blockerID <= MapTiles_groupDoor_yellow_right) && (global.doors_redblocker[blockerID2] <= 0)
							{
								draw_sprite_ext(blockerID,0, x, y,1,1,0,c_white,image_alpha)
							}
							
						if (hazardID2 >= MapTiles_autohack) && (hazardID2 <= MapTiles_vine) && (global.doors_redblocker[hazardID_redblockerID] <= 0)
							{
								draw_sprite_ext(hazardID2,0,x,y,1,1,0,c_white,image_alpha)	
							}
						if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
						{
							draw_sprite_ext(spr_itemlocated,inst_item_imageindex,x,y,1,1,0,c_white,image_alpha)		
							inst_item_imageindex += (1/room_speed)
						}
						timerfade = 0;
						draw_set_alpha(1)
					}
			}
		if (gotsprite != 0) && (discovered = 1) && ((global.pause_map = 1) or (global.navigation = 1) or ((global.pause_exit > 0) && (global.pause_map > 0) && (global.stopper_2ndscrnshot <= 0)))
		{
			x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10))+global.xleft
			y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10))+global.yup

			if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
				{
					onborder = 1
					draw_set_alpha(image_alpha)
					shader_set(shd_fade_whitegreen);
					shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
					draw_self()
					
					if (blockerID >= MapTiles_groupDoor_blueleft) && (blockerID <= MapTiles_groupDoor_yellow_right) && (global.doors_redblocker[blockerID2] <= 0)
							{
								draw_sprite_ext(blockerID,0, x, y,1,1,0,c_white,image_alpha)
							}
							
						if (hazardID2 >= MapTiles_autohack) && (hazardID2 <= MapTiles_vine) && (global.doors_redblocker[hazardID_redblockerID] <= 0)
							{
								draw_sprite_ext(hazardID2,0,x,y,1,1,0,c_white,image_alpha)	
							}
					if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
					{
						draw_sprite_ext(spr_itemlocated,inst_item_imageindex,x,y,1,1,0,c_white,image_alpha)		
						inst_item_imageindex += (1/room_speed)
					}
			
					timerfade = 1;
					shader_reset();
					draw_set_alpha(1)
				}
				else
				{
					draw_set_alpha(image_alpha)
					
					draw_self()
					if (blockerID >= MapTiles_groupDoor_blueleft) && (blockerID <= MapTiles_groupDoor_yellow_right) && (global.doors_redblocker[blockerID2] <= 0)
							{
								draw_sprite_ext(blockerID,0, x, y,1,1,0,c_white,image_alpha)
							}
							
						if (hazardID2 >= MapTiles_autohack) && (hazardID2 <= MapTiles_vine) && (global.doors_redblocker[hazardID_redblockerID] <= 0)
							{
								draw_sprite_ext(hazardID2,0,x,y,1,1,0,c_white,image_alpha)	
							}
					if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
					{
						draw_sprite_ext(spr_itemlocated,inst_item_imageindex,x,y,1,1,0,c_white,image_alpha)		
						inst_item_imageindex += (1/room_speed)
					}
					timerfade = 0;
					draw_set_alpha(1)
				}
		}
	}
}
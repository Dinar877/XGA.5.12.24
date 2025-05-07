 /// @description Insert description here
// You can write your code in this editor

//if the maptile has a sprite (given from the room square(obj_mapchecker1)) and if it's on the blue bit under the map border hud,
//then draw it. Draw it fading white if in the middle of the minimap hud

if (!place_meeting(x,y,obj_mapborder_underside)) or (sectortile != global.sector_active)
{
	exit;	
}



if (place_meeting(x,y,obj_mapborder_underside)) && (sectortile == global.sector_active)
{
	if (gotsprite != 0) && (discovered = 1) && (global.pause_map = 0) && (global.pause_player = 0)
	&& (global.pause = 0) && (global.pause_transition = 0)
	{
			//create the surface
			if (!surface_exists(surface1))
			{
				surface1 = surface_create(30,30);
			}
			
			if (surface_exists(surface1))
			{
				if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
				{
					//debugging- give me the fps - see if it's going down overtime
					//draw_text(10,10,"fps: "+string(fps))
					//draw_text_color(10,10,"fps: "+string(fps),c_white,c_white,c_white,c_white,1);
					
					surface_set_target(surface1);
					draw_clear_alpha(c_white,0);
					draw_set_alpha(image_alpha)
						
					shader_set(shd_fade_whitegreen);
					shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
						
					//draw_self();
					draw_sprite(sprite_index, image_index, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)));
						
					if (blockerID >= MapTiles_groupDoor_blueleft) && (blockerID <= MapTiles_groupDoor_yellow_right) && (global.doors_redblocker[blockerID2] <= 0)
						{
							draw_sprite_ext(blockerID,0, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)),1,1,0,c_white,image_alpha)
						}
							
					if (hazardID2 >= MapTiles_autohack) && (hazardID2 <= MapTiles_vine) && (global.doors_redblocker[hazardID_redblockerID] <= 0)
						{
							draw_sprite_ext(hazardID2,0, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)),1,1,0,c_white,image_alpha)	
						}
					if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
						{
							draw_sprite_ext(spr_itemlocated,inst_item_imageindex, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)),1,1,0,c_white,image_alpha)		
							inst_item_imageindex += (1/room_speed)
						}
						
					timerfade = 1;
					shader_reset();
					
					surface_reset_target();
					draw_set_alpha(1)
				
					//draw
					draw_surface(surface1,291,0);	
				
					surface_free(surface1);
				}
				else 
				{
					surface_set_target(surface1);
					draw_clear_alpha(c_white,0);
					draw_set_alpha(image_alpha)
					
					//draw_self();
					draw_sprite(sprite_index, image_index, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)));
						
					if (blockerID >= MapTiles_groupDoor_blueleft) && (blockerID <= MapTiles_groupDoor_yellow_right) && (global.doors_redblocker[blockerID2] <= 0)
						{
							draw_sprite_ext(blockerID,0, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)),1,1,0,c_white,image_alpha)
						}
							
					if (hazardID2 >= MapTiles_autohack) && (hazardID2 <= MapTiles_vine) && (global.doors_redblocker[hazardID_redblockerID] <= 0)
						{
							draw_sprite_ext(hazardID2,0, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)),1,1,0,c_white,image_alpha)	
						}
					if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
						{
							draw_sprite_ext(spr_itemlocated,inst_item_imageindex, 10+((tileposx*10)-(global.mapgrid_playerx*10)), 10+((tileposy*10)-(global.mapgrid_playery*10)),1,1,0,c_white,image_alpha)		
							inst_item_imageindex += (1/room_speed)
						}
						
					timerfade = 0;
					
					surface_reset_target();
					draw_set_alpha(1)
				
					//draw
					draw_surface(surface1,291,0);	
				
					surface_free(surface1);
				}
			}		
	}
}





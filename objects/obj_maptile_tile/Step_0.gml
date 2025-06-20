 /// @description Insert description here
// You can write your code in this editor

if (sectortile != global.sector_active)
{
	exit;	
}

//fadenow
if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0) && (global.pause_transition <= 0) && (global.pause_exit <= 0)
{
	if (FadeNow2 <= 0) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if (FadeNow2 > 0) && (surface2neg == 1)
	{
		FadeNow2 -= (1/room_speed)*1.5;
	}

	if (FadeNow2 >= 0.8) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (FadeNow2 < 0.8) && (surface2pos == 1)
	{
		FadeNow2 += (1/room_speed)*1.5;
	}
}
else 
{
	FadeNow2 = 0	
	surface2pos = 1;
	surface2neg = 0;
}








//disable if not on the map border
x = (291+13+(tileposx*10)-(global.mapgrid_playerx*10))-3;
y = (0+7+(tileposy*10)-(global.mapgrid_playery*10))+3;

if (!place_meeting(x,y,obj_mapborder_underside))
&& (gotsprite > 0) && (discovered > 0) && (sectortile = global.sector_active)
{
	exit;	
}


//xga intro effect
if (image_alpha <= 1) && (instance_exists(obj_player)) && (global.cutscene = 0) && (instance_exists(obj_healthbar))
{
	if (obj_healthbar.image_alpha < 1)
	{
		image_alpha += (1/room_speed)/2
	}
	else if (obj_healthbar.image_alpha >= 1)
	{
		image_alpha = 1
	}
}
else if (image_alpha >= 1) && (global.cutscene = 1)
{
	image_alpha = 0
}

//DELETE EXTRA MAP OBJECT IF ANOTHER ONE HAS BEEN CREATED AND IS IDENTICAL TO AN EXISTING ONE

if (instance_place(x,y,obj_maptile_tile)) && (gotsprite == 1) && (place_meeting(x,y,obj_mapborder_underside)) && (sectortile = global.sector_active)
{
	with(instance_place(x,y,obj_maptile_tile))
	{
		if (gotsprite > 0)
		&& (tileposx = other.tileposx) && (tileposy = other.tileposy)
		&& (sectortile = other.sectortile)
		&& (instance_place(x,y,obj_maptile_tile))
		&& (sprite_index = other.sprite_index)
		{
			instance_destroy();
			exit
		}
	}
}





//SET TILE GLOBAL VARIABLES DATA FOR THE SAVE DATA, AFTER MAP TILE HAS GOTTEN SPRITE, AND HAS ACCOUNTED FOR X AND Y MOVEMENT FROM THE PREVIOUS STEP EVENT (IF ANY).
if (gotsprite = 1) && (discovered = 1) && (tileN = 0)
&& (((!global.room_transition) && (!global.room_transition1) && (!global.room_transition_more)
&& (!global.room_transition_nodoors) && (!global.room_transition_nodoors_2) && (!global.room_transition_nodoors_more)) or (global.stopper_2ndscrnshot = 1))
{
	//deals with all the blockers, items and hazard sprites
	with(inst_mapchecker1)
	{
		map_sprites()
	}
	
	
	
	//DATA
	global.tiledataN += 1;
	global.tiledata[global.tiledataN] = global.tiledataN;
	global.tilesprite[global.tiledataN] = sprite_index;
	global.tilex[global.tiledataN] = floor(tileposx);
	global.tiley[global.tiledataN] = floor(tileposy);
	global.tilesector[global.tiledataN] = sectortile;
	global.tileroom[global.tiledataN] = room;
	
	tileN = global.tiledataN
			
	if (blockerID > 0) && (global.doors_redblocker[blockerID2] <= 0)
	{
		global.tileblocker[global.tiledataN] = blockerID
		global.tileblocker2[global.tiledataN] = blockerID2
	}
			
	if (upgradeID2 > 0) && (global.upgradecollected[upgradeID2] <= 0)
	{
		global.tileitem[global.tiledataN] = upgradeID2
	}
			
	if (hazardID > 0)
	{
		global.tile_hazard[global.tiledataN] = hazardID
		global.tile_hazard_sprite[global.tiledataN] = hazardID2
		global.tile_hazard_redblockerID[global.tiledataN] = hazardID_redblockerID
	}
	
	//for when using surfaces to draw
	originX = global.xleft;
	originY = global.yup;
	origionalX = global.mapgrid_playerx;
	origionalY = global.mapgrid_playery;
}


//GETTING THE RIGHT MAP SPRITE, BASED ON THE POSITIONS OF THE MAP CHECKER OBJECTS
if (gotsprite = 0) && (discovered = 1) 
&& (((!global.room_transition) && (!global.room_transition1) && (!global.room_transition_more)
&& (!global.room_transition_nodoors) && (!global.room_transition_nodoors_2) && (!global.room_transition_nodoors_more)) or (global.stopper_2ndscrnshot = 1))
{
	with(inst_mapchecker1)
	{
		////////////////////////////////////WITHOUT DOOR		
		if (!place_meeting(x,y,obj_door_normal_left)) && (!place_meeting(x,y,obj_door_normal_right)) && (!place_meeting(x,y,obj_door_normal_leftAlt)) && (!place_meeting(x,y,obj_door_normal_rightAlt))
		{
		//Dead end-no door
		#region
		//deadend right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_14;
			}
		}
		//deadend left
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_4;
			}
		}
		//deadend up
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_3;
			}
		}
		//deadend down
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_13;
			}
		}
		#endregion

		//plain walls-no doors or tiny corners
		#region
		//plain roof
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		//&& (position_meeting(x+241,y+161,obj_mapchecker2)) && (position_meeting(x-241,y+161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile6;
			}
		}
		//plain floor
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		  //&& (position_meeting(x+241,y-161,obj_mapchecker2)) && (position_meeting(x-241,y-161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile16;
			}
		}
		//plain wall left
		if (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		  //&& (position_meeting(x+241,y-161,obj_mapchecker2)) && (position_meeting(x+241,y+161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile5;
			}
		}
		//plain wall right
		if (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		  //&& (position_meeting(x+241,y+161,obj_mapchecker2)) && (position_meeting(x+241,y-161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile15;
			}
		}
		#endregion

		//plain corners-no tiny corners or doors
		#region
		//plain corner upleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_5;
			}
		}
		//plain corner upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_6;
			}
		}
		//plain corner downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_16;
			}
		}
		//plain corner downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_15;
			}
		}
		#endregion

		//tiny cornerx1-no doors-no full corner
		#region
		//tiny cornerx1-topleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		 && (!position_meeting(x-1,y-1,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_5;
			}
		}
		//tiny cornerx1-topright
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+241,y-1,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_6;
			}
		}
		//tiny cornerx1-bottomleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		  && (!position_meeting(x-1,y+161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_12;
			}
		}
		//tiny cornerx1-bottomright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		&& (!position_meeting(x+241,y+161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_11;
			}
		}
		#endregion
		
		
		
		
		
		
		//plain walls- with tiny corners x1-no doors
		#region
		
		//plain roof - tiny corner left
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile10;
			}
		}
		//plain roof2 - tiny corner right
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_10;
			}
		}
		
		
		
		
		
		//plain floor - tiny corner left
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_12;
			}
		}
		//plain floor2 - tiny corner right
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		&& (!place_meeting(x,y,obj_door_normal_left))
		&& (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) 
		&& (position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		//&& (position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) 
		//&& (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_25;
			}
		}
		
		
		

		//plain wall left - tiny corner up
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		 && (position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile9
			}
		}
		//plain wall left2 - tiny corner down
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_9;
			}
		}
		
		
		
		
		
		//plain wall right - tiny corner up
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_11;
			}
		}
		//plain wall right2 - tiny corner down
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile11;
			}
		}
		#endregion
		
		//plain walls- with tiny corners x2-no doors
		#region
		//plain roof
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_2;
			}
		}
		//plain floor
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_4;
			}
		}
		//plain wall left
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_1;
			}
		}
		//plain wall right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		 && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		 && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_3;
			}
		}
		#endregion
		
		//corners with tiny corners-no doors
		#region
		//upleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_link_rightdoor)) && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile19;
			}
		}
		
		//upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_link_leftdoor)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile20;
			}
		}
		
		//downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_link_rightdoor)) && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile2;
			}
		}
		
		//downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_link_leftdoor)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile1;
			}
		}
		#endregion
		
		///plain corners w/ tiny corners
		if (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2))
		 && (!position_meeting(x+325,y-5,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile2;
			}
		}
		
		//corridor sideways
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_17;
			}
		}
		//corridor up and down
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_18;
			}
		}


		
		
		
		//ENTIRELY SURROUNDED
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_link_leftdoor)) && (position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2)) && (position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2))
		  && (position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2)) && (position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_19;
			}
		}



		}

		////////////////////////////////////////////////////////////WITH DOOR

		//plain walls
		#region
		//plain wall left
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (!place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_10;
			}
		}
		//plain wall right
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (!place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_9;
			}
		}
		#endregion

		//plain corner
		#region
		//door corner upleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = maptile7;
			}
		}
		//door corner upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = maptile8;
			}
		}
		//door corner downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = maptile14;
			}
		}
		//door corner downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = maptile13;
			}
		}
		#endregion	
		
		//Two walls
		#region
		
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_14;
			}
		}
		//left and right-right door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_13;
			}
		}
		
		//left and right-both doors
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_15;
			}
		}
		
		
		#endregion
		
		//Two walls-2 doors-ceiling and floor
		#region
		
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_11;
			}
		}
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_12;
			}
		}
		#endregion
		
		//deadends
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_1;
			}
		}
		//deadend left-door
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_15;
			}
		}
		//deadend down-door left
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (!place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend down-door right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (!place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_8;
			}
		}
		#endregion
		
		//deadends-1x1 rooms
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend left-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend down-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		#endregion
		
		//deadends2-conrer doors
		#region
		//deadend upright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (!place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_6;
			}
		}
		//deadend upleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (!place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_5;
			}
		}
		//deadend downright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (!place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend downleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (!place_meeting(x,y,obj_link_leftdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_8;
			}
		}
		#endregion
		
		//1x1 room-2 doors
		#region
		
					//1x1 room 2 doors
			if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
			 && (place_meeting(x,y,obj_link_leftdoor)) && (place_meeting(x,y,obj_link_rightdoor))
			{
				with(other)
				{
					sprite_index = maptile_2ndgroup_19;
				}
			}
		
		#endregion
		
		//deadends2-TWO conrer doors
		#region
		//deadend upright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_11;
			}
		}
		//deadend downright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (place_meeting(x,y,obj_link_rightdoor))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_12;
			}
		}
		#endregion
		
		//corners with tiny corners-doors
		#region
		//upleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (!position_meeting(x+sprite_width,y+sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile17;
			}
		}
		
		//upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (!position_meeting(x-sprite_width,y+sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile18;
			}
		}
		
		//downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_rightdoor)) && (!position_meeting(x+sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile4;
			}
		}
		
		//downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (!position_meeting(x-sprite_width,y-sprite_height,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = maptile3;
			}
		}
		#endregion
		
		//SAVE
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_NEWsav_bottom)) && (place_meeting(id.x,id.y,obj_player))
		 && (place_meeting(x,y,obj_link_leftdoor)) && (place_meeting(x,y,obj_link_rightdoor))
		 {
			 with(other)
			{
				sprite_index = spr_saveroom_tile_LandR;
			}
		 }
		 else if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_NEWsav_bottom)) && (place_meeting(id.x,id.y,obj_player))
		 && (place_meeting(x,y,obj_link_leftdoor))
		 {
			 with(other)
			{
				sprite_index = spr_saveroom_tile_R;
			}
		 }
		 else if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_NEWsav_bottom)) && (place_meeting(id.x,id.y,obj_player))
		 && (place_meeting(x,y,obj_link_rightdoor))
		 {
			 with(other)
			{
				sprite_index = spr_saveroom_tile_L;
			}
		 }
		 
		 //NAV
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_navigation_pillar1)) && (instance_exists(obj_link_leftdoor)) && (instance_exists(obj_link_rightdoor))
		 {
			 with(other)
			{
				sprite_index = spr_navigation_tile;
			}
		 }
		else if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_navigation_pillar1)) && (instance_exists(obj_link_leftdoor)) && (!instance_exists(obj_link_rightdoor))
		 {
			 with(other)
			{
				sprite_index = spr_navigation_tile_doorright;
			}
		 }
		 
		 
		 
		//ELEVATORS- L then R
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		&& (place_meeting(x,y,obj_elevator_top1))
		 {
			if (obj_elevator_top1.inst_elevator = obj_elevator_sector1)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector1_left;
				}
			}
			else if (obj_elevator_top1.inst_elevator = obj_elevator_sector2)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector2_left;
				}
			}
			else if (obj_elevator_top1.inst_elevator = obj_elevator_sector3)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector3_left;
				}
			}
			else if (obj_elevator_top1.inst_elevator = obj_elevator_sector4)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector4_left;
				}
			}
			else if (obj_elevator_top1.inst_elevator = obj_elevator_sectortutorial)
			{
				with(other)
				{
					sprite_index = spr_maptile_mainsectorL;
				}
			}
		 }
		else if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		&& (place_meeting(x,y,obj_elevator_top1_right))
		 {
			if (obj_elevator_top1_right.inst_elevator = obj_elevator_sector1)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector1_right;
				}
			}
			else if (obj_elevator_top1_right.inst_elevator = obj_elevator_sector2)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector2_right;
				}
			}
			else if (obj_elevator_top1_right.inst_elevator = obj_elevator_sector3)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector3_right;
				}
			}
			else if (obj_elevator_top1_right.inst_elevator = obj_elevator_sector4)
			{
				with(other)
				{
					sprite_index = spr_maptile_sector4_right;
				}
			}
			else if (obj_elevator_top1_right.inst_elevator = obj_elevator_sectortutorial)
			{
				with(other)
				{
					sprite_index = spr_maptile_mainsectorR;
				}
			}
		 }
		 
		 
		 
		//end
		with(other)
		{
			gotsprite = 1;
			discovered = 1;
		}
		
	}
}
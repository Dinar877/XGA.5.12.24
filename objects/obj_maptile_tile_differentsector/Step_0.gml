/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables)

x = __view_get( e__VW.XView, 0 )+floor(290+(tileposx*10)-(global.mapgrid_playerx*10));
y = __view_get( e__VW.YView, 0 )+floor(10+(tileposy*10)-(global.mapgrid_playery*10));

if (instance_place(x,y,obj_maptile_tile)) && (gotsprite == 0)
{
	with(instance_place(x,y,obj_maptile_tile))
	{
		if (gotsprite > 0)
		{
			instance_destroy(other);
		}
	}
}

if (gotsprite = 0) && (discovered = 1) 
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

		//tiny cornerx1-no doors
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
		
		//plain walls- with tiny cornersx2-no doors
		#region
		//plain roof
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		&& (!position_meeting(x+241,y+161,obj_mapchecker2)) && (!position_meeting(x-1,y+161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_2;
			}
		}
		//plain floor
		if (place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		  && (!position_meeting(x+241,y-1,obj_mapchecker2)) && (!position_meeting(x-1,y-1,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_4;
			}
		}
		//plain wall left
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_right))
		  && (!position_meeting(x+241,y-1,obj_mapchecker2)) && (!position_meeting(x+241,y+161,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_1;
			}
		}
		//plain wall right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (!place_meeting(x,y,obj_door_normal_left))
		  && (!position_meeting(x-1,y+161,obj_mapchecker2)) && (!position_meeting(x-1,y-1,obj_mapchecker2))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_3;
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




		}

		////////////////////////////////////////////////////////////WITH DOOR

		//plain walls
		#region
		//plain wall left
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_10;
			}
		}
		//plain wall right
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left))
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
		 && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile7;
			}
		}
		//door corner upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile8;
			}
		}
		//door corner downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile14;
			}
		}
		//door corner downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left))
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
		 && (place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_14;
			}
		}
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_13;
			}
		}
		#endregion
		
		
		//deadends
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_1;
			}
		}
		//deadend left-door
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_15;
			}
		}
		//deadend down-door left
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left)) && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend down-door right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right)) && (!place_meeting(x,y,obj_door_normal_left))
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
		 && (place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend left-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend down-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right))
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
		 && (place_meeting(x,y,obj_door_normal_left)) && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_6;
			}
		}
		//deadend upleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right)) && (!place_meeting(x,y,obj_door_normal_left))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_5;
			}
		}
		//deadend downright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left)) && (!place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend downleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right)) && (!place_meeting(x,y,obj_door_normal_left))
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
			 && (place_meeting(x,y,obj_door_normal_left)) && (place_meeting(x,y,obj_door_normal_right))
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
		 && (place_meeting(x,y,obj_door_normal_left)) && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_11;
			}
		}
		//deadend downright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left)) && (place_meeting(x,y,obj_door_normal_right))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_12;
			}
		}
		#endregion
		
		
		
		
		////////////////////////////////////////////////////////////WITH DOOR ALT
		//door corner alt
		#region
		//door corner upleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = maptile7;
			}
		}
		//door corner upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = maptile8;
			}
		}
		//door corner downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = maptile14;
			}
		}
		//door corner downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = maptile13;
			}
		}
		#endregion
		
		//deadends-alt doors
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_1;
			}
		}
		//deadend left-door
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_15;
			}
		}
		//deadend down-door left
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt)) && (!place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend down-door right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt)) && (!place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_8;
			}
		}
		#endregion
		
		//deadends-1x1rooms-ALT
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend left-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend down-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		#endregion
		
		//deadends2-conrer doors ALT
		#region
		//deadend upright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_6;
			}
		}
		//deadend upleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_5;
			}
		}
		//deadend downright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend downleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_8;
			}
		}
		#endregion
		
		//1x1 room-2 doors-ALT
		#region
		
				//1x1 room 2 doors
			if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
			 && (place_meeting(x,y,obj_door_normal_leftAlt)) && (place_meeting(x,y,obj_door_normal_rightAlt))
			{
				with(other)
				{
					sprite_index = maptile_2ndgroup_19;
				}
			}
		
		#endregion
		
		//two walls-alt
		#region
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_leftAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_14;
			}
		}
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_rightAlt))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_13;
			}
		}
		#endregion
		
		
///////////////////////////////////////////////////////DOORS-MORE
		//door corner alt
		#region
		//door corner upleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = maptile7;
			}
		}
		//door corner upright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = maptile8;
			}
		}
		//door corner downleft
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = maptile14;
			}
		}
		//door corner downright
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = maptile13;
			}
		}
		#endregion
		
		//deadends-alt doors
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_1;
			}
		}
		//deadend left-door
		if (place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = maptile_3rdgroup_15;
			}
		}
		//deadend down-door left
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more)) && (!place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend down-door right
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more)) && (!place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_8;
			}
		}
		#endregion
		
		//deadends-1x1rooms-ALT
		#region
		//deadend right-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend left-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		//deadend up-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_1;
			}
		}
		//deadend down-door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = maptile_2ndgroup_2;
			}
		}
		#endregion
		
		//deadends2-conrer doors ALT
		#region
		//deadend upright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_6;
			}
		}
		//deadend upleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_5;
			}
		}
		//deadend downright-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_7;
			}
		}
		//deadend downleft-door2
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_8;
			}
		}
		#endregion
		
		//1x1 room-2 doors-ALT
		#region
		
				//1x1 room 2 doors
			if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
			 && (place_meeting(x,y,obj_door_normal_left_more)) && (place_meeting(x,y,obj_door_normal_right_more))
			{
				with(other)
				{
					sprite_index = maptile_2ndgroup_19;
				}
			}
		
		#endregion
		
		//two walls-alt
		#region
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_left_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_14;
			}
		}
		//left and right-left door
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (place_meeting(x,y+1,obj_mapchecker2)) && (place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_door_normal_right_more))
		{
			with(other)
			{
				sprite_index = MapTiles_group4_13;
			}
		}
		#endregion
		
		//SAVE
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_savepillar_separated1)) or (global.dead_ending)
		 {
			 with(other)
			{
				sprite_index = spr_saveroom_tile;
			}
		 }
		 
		 //NAV
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_navigation_pillar1))
		 {
			 with(other)
			{
				sprite_index = spr_navigation_tile;
			}
		 }
		 
		  //CORE
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_corelock_pillar))
		 {
			 with(other)
			{
				sprite_index = spr_control_tile;
			}
		 }
		 
		 
		   //ELEVATOR-LEFT
		if (!place_meeting(x+1,y,obj_mapchecker2)) && (!place_meeting(x-1,y,obj_mapchecker2)) && (!place_meeting(x,y+1,obj_mapchecker2)) && (!place_meeting(x,y-1,obj_mapchecker2))
		 && (place_meeting(x,y,obj_elevator_top1))
		 {
			 with(other)
			{
				sprite_index = spr_elevator_left;
			}
		 }
		 
		
		with(other)
		{
			gotsprite = 1;
			discovered = 1;
			global.tiledataN += 1;
			global.tiledata[global.tiledataN] = global.tiledataN;
			global.tilesprite[global.tiledataN] = sprite_index;
			global.tilex[global.tiledataN] = floor(tileposx);
			global.tiley[global.tiledataN] = floor(tileposy);
		}
		
	}
}

if (timerfade = 1) && (FadeNow2 == 0)
{
	FadeNow2 = 1.0;
}

//fadenow
if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
{
	if (FadeNow2 <= 0) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if (FadeNow2 > 0) && (surface2neg == 1)
	{
		FadeNow2 -= 1/room_speed;
	}

	if (FadeNow2 >= 1) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (FadeNow2 < 1) && (surface2pos == 1)
	{
		FadeNow2 += 1/room_speed;
	}
}
else 
{
	FadeNow2 = 0	
	surface2pos = 1;
	surface2neg = 0;
}
	


////PAUSED CONTROLS FOR MAP

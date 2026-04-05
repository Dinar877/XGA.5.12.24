 //var inst_maptile2 = instance_exists(obj_maptile_tile);
  
tileposx_checker = floor((id.x/320)+(global.mapgrid_startroomx));
tileposy_checker = floor((id.y/180)+(global.mapgrid_startroomy));

if (!instance_exists(obj_player)) && ((global.loading > 0)
or (global.loading_startgame > 0))
{
	instance_destroy()
	exit
}

if (global.teleport > 0)
{
	instance_destroy()
	
	if (instance_exists(obj_player))
	{
		global.mapgrid_playerx = floor((obj_player.x/320)+(global.mapgrid_startroomx));
		global.mapgrid_playery = floor((obj_player.y/180)+(global.mapgrid_startroomy));	
	}
	
	exit
}


if (instance_exists(obj_player))
{
	with(obj_player)
	{
		if (instance_place(x,y,obj_mapchecker2)) && (switch_mapchecker2 = 1)
		{
			if (((instance_place(x,y,obj_mapchecker2)).tileposx_checker)-(global.mapgrid_playerx) = 0) && (((instance_place(x,y,obj_mapchecker2)).tileposy_checker)-(global.mapgrid_playery) = 0) //if not currently inside that same mapchecker2 object anymore
			{
				switch_mapchecker2 = 0
				inst_mapchecker2 = -1
			}
		}
	}
	
	if (place_meeting(id.x,id.y,obj_player)) && (obj_player.switch_mapchecker2 = 0) && (obj_player.inst_mapchecker2 = -1) && (gotTile == 0)
	&& (((!global.room_transition) && (!global.room_transition1) && (!global.room_transition_more)
	&& (!global.room_transition_nodoors) && (!global.room_transition_nodoors_2) && (!global.room_transition_nodoors_more)) or (global.stopper_2ndscrnshot = 1))
	{
			obj_player.switch_mapchecker2 = 1
			obj_player.inst_mapchecker2 = self
			
			inst_maptile = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_maptile_tile);
			
			/*
			if !(place_meeting(x,y,obj_elevator_top1))
			{
				inst_maptile = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_maptile_tile);
			}
			else if (place_meeting(x,y,obj_elevator_top1))
			{
				inst_maptile = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_maptile_tile);
			}
			*/
			
			with(inst_maptile)
			{	
				sectortile = global.sector_active;
				
			
				if (global.mapgrid_1x1 == 0)
				{
					tileposx = floor((other.x/320)+(global.mapgrid_startroomx));
					tileposy = floor((other.y/180)+(global.mapgrid_startroomy));
				}
				else if (global.mapgrid_1x1 == 1)
				{
					tileposx = floor((x/320)+(global.mapgrid_startroomx));
					tileposy = floor((y/180)+(global.mapgrid_startroomy));
				}
				
				
				
			}
			gotTile = 1;	
		
			//ITEM-NOTFOUND
			/*
			 if (place_meeting(x,y,obj_upgrade_energytank)) or (place_meeting(x,y,obj_upgrade_invisibility_extension)) or (place_meeting(x,y,obj_upgrade_nanoshield_extension))
			 {
				 with(other)
				 {
					var inst = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_maptile_tile_hint_item)	 
					if (global.mapgrid_1x1 == 0)
						{
						inst.tileposx = floor((other.x/320)+(global.mapgrid_startroomx));
						inst.tileposy = floor((other.y/180)+(global.mapgrid_startroomy));
						}
					else if (global.mapgrid_1x1 == 1)
						{
						inst.tileposx = floor((x/320)+(global.mapgrid_startroomx));
						inst.tileposy = floor((y/180)+(global.mapgrid_startroomy));
						}
				 }
			 }
			 */
		 
			 //DIFFERENT SECTOR
			 if (place_meeting(x,y,obj_elevator_top1))
			 {
				 with(other)
				 { 
					sectortile = 1
					if (global.mapgrid_1x1 == 0)
						{
						tileposx = floor((other.x/320)+(global.mapgrid_startroomx));
						tileposy = floor((other.y/180)+(global.mapgrid_startroomy));
						}
					else if (global.mapgrid_1x1 == 1)
						{
						tileposx = floor((x/320)+(global.mapgrid_startroomx));
						tileposy = floor((y/180)+(global.mapgrid_startroomy));
						}
				 }
			 }
	}
}


//if player is inside the current room square, then set the player's mapgrid value!
if (instance_exists(obj_player))
{
	with(obj_player)
	{
			if (instance_place(x,y,obj_mapchecker2))
			&& (((!global.room_transition) && (!global.room_transition1) && (!global.room_transition_more)
			&& (!global.room_transition_nodoors) && (!global.room_transition_nodoors_2) && (!global.room_transition_nodoors_more)) or (global.stopper_2ndscrnshot = 1))
			{
				global.mapgrid_playerx = floor((obj_player.x/320)+(global.mapgrid_startroomx));
				global.mapgrid_playery = floor((obj_player.y/180)+(global.mapgrid_startroomy));
			}
	}
}

if (place_meeting(id.x,id.y,obj_player)) && (((tileposx_checker*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy_checker*10)-(global.mapgrid_playery*10))) = 0)
{
		discovered = 1;
		with(inst_maptile)
		{
			discovered = 1;
		}
}
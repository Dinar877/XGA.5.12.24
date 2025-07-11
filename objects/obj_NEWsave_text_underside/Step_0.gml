/// @description Insert description here
// You can write your code in this editor
Gamepad_getname()

if (instance_exists(obj_scrn_roomtransition)) && (found > 0) && (global.teleport = 1)
{
	exit
}

//fade in/fade out
if (image_speed > -1) && (image_alpha < 1)
{
	image_alpha += 0.05	
}
else if (image_alpha > 0) && (image_speed <= -1)
{
	image_alpha -= 0.05	
	
	if (instance_exists(obj_NEWsave_travel_greenbox))
	{
		with(obj_NEWsave_travel_greenbox)
		{
			image_alpha -= 0.05	
		}
	}
}

if (image_index >= image_number - 1) && (image_speed != 0)
{
	image_speed = 0;
	
	sector_active = global.sector_active
	
	var instn1 = instance_create_depth(x+30,y+8,id.depth-1,obj_NEWsave_travel_greenbox)
	with(instn1)
	{
		left = 1
	}
	var instn2 = instance_create_depth(x+230,y+8,id.depth-1,obj_NEWsave_travel_greenbox)
	with(instn2)
	{
		right = 1
	}
	var instn3 = instance_create_depth(x+130,y+8,id.depth-1,obj_NEWsave_travel_greenbox)
	with(instn3)
	{
		confirm = 1
	}
	
	text = "CHANGE SECTORS: " + string(L2) + "/" + string(R2);
	text1 = "CURRENT SECTOR: " + string(global.sector_active);
	textback = "GO BACK: " + string(shoot_pressed);
}


//change sectors
if (image_speed = 0)
{
	//menu- changing sectors displayed
	if (gamepad4_wait < 1)
	{
		gamepad4_wait += 0.05
	}
	
	text = "CHANGE SECTORS: " + string(L2) + "/" + string(R2);
	text1 = "CURRENT SECTOR: " + string(global.sector_active);
	textback = "GO BACK: " + string(shoot_pressed);


	Gamepad_variables()

	var bobby1 = R2-L2

	if (global.sector_active+bobby1 > -1) && (global.sector_active+bobby1 < 5)
	&& (bobby1 != 0)
	&& (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1)
	{
		gamepad4_wait = 0
		
		inst = 0
		
		global.sector_active += bobby1
		
		global.xleft = 25
		global.yup = 25
	}
	else if (global.sector_active+bobby1 > -1) && (global.sector_active+bobby1 < 5)
	&& (bobby1 != 0)
	&& (!gamepad_is_connected(correct_slot))
	{
		global.sector_active += bobby1
		
		global.xleft = 25
		global.yup = 25
		
		inst = 0
	}
	
	
	//if save room found
	if (inst <= 0)
	{
		if (instance_exists(obj_maptile_tile))
		{
			with(obj_maptile_tile)
			{
				if ((sprite_index = spr_saveroom_tile_L) or (sprite_index = spr_saveroom_tile_R) or (sprite_index = spr_saveroom_tile_LandR))
				&& (sectortile == global.sector_active)
				{
					go = 1
					
					with(obj_NEWsave_text_underside)
					{
						inst++
						inst_id_num[inst] = other.id
						inst_roomid_num[inst] = other.room1
						
						inst_index = 1
					}
				}
			}
		}
	}
	
	//inst = overall limit
	//inst_index = position inside array
	
	//once id found, move map tiles to center it
	if (inst_index > 0) && (inst > 0)
	{
		if (inst_id_num[inst_index] > 0)
			{
				if (instance_exists(inst_id_num[inst_index]))
				{
					//X
					if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < 160 - 10)
						{
							global.xleft += 6;
						}
					else if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > 160 + 10)
						{
							global.xleft -= 6;
						}
					else if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < 160) && ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) >= 160 - 10)
						{
							global.xleft += 1;
						}
					else if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > 160) && ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) <= 160 + 10)
						{
							global.xleft -= 1;
						}
		
					////Y
					if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) < 90 - 10)
						{
							global.yup += 6;
						}
					else if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) > 90 + 10)
						{
							global.yup -= 6;
						}
					else if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) < 90) && ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) >= 90 - 10)
						{
							global.yup += 1;
						}
					else if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) > 90) && ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) <= 90 + 10)
						{
							global.yup -= 1;
						}
						
					
					//RESET
					if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst_id_num[inst_index].tileposy*10)-(global.mapgrid_playery*10))+global.yup) == 90)
					&& ((__view_get( e__VW.XView, 0 ) + floor(160+(inst_id_num[inst_index].tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) == 160)
					{
						go = 0
						found = 1
					}
				}
			}
	}
	
	
	
	
	//GO BACK TP PREVIOUS MENU
	if (global.navigation > 0) && (shoot_pressed)
	{
		global.navigation = 0
		global.sector_active = sector_active
		
		//music playing per sector
		if (global.sector_active = 0)
		{
			instance_create(0,0,obj_sndmaker_mainhub)
		}
		else if (global.sector_active = 1)
		{
			instance_create(0,0,obj_sndmaker_sector1)
		}
		else if (global.sector_active = 2)
		{
			if (room != rm_S3_NEWsave_LR)
			{
				instance_create(0,0,obj_sndmaker_sector2)
			}
			else if (room == rm_S3_NEWsave_LR) && (global.bossblockers[bossblockers.flowey] <= 0)
			{
				instance_create(0,0,obj_sndmaker_preboss_any)
			}
		}
		else if (global.sector_active = 3)
		{
			instance_create(0,0,obj_sndmaker_sector3)
		}
		else if (global.sector_active = 4)
		{
			instance_create(0,0,obj_sndmaker_sector4)
		}
		
		image_speed = -1
	}
}


//destory if reversed into start
if (image_index <= 0) && (image_speed = -1)
{
	image_speed = 0;
	
	global.xleft = 0
	global.yup = 0
	
	//activate
	instance_activate_object(obj_NEWsav_text_yes)
	instance_activate_object(obj_NEWsav_text_no)
	instance_activate_object(obj_NEWsav_text_travel)
	instance_activate_object(obj_NEWsav_text)
	
	instance_activate_object(obj_NEWsav_bottom)
	instance_activate_object(obj_NEWsav_top)
	instance_activate_object(obj_NEWsav_standbyeffect)
	
	//making sure the save laser effect doesn't overlap the top of the save machine
	if (instance_exists(obj_NEWsav_standbyeffect))
	&& (instance_exists(obj_NEWsav_top))
	{
		obj_NEWsav_standbyeffect.depth = obj_NEWsav_top.depth+1
	}
	
	
	instance_activate_object(obj_mapborder_underside)
	instance_activate_object(obj_mapborder)
	
	with(obj_NEWsave_travel_greenbox)
	{
		instance_destroy()	
	}
	
	instance_destroy()
}

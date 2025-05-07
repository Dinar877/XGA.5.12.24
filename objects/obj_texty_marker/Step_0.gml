/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

switch2 = 0

if (alpha < 1)
{
	alpha += spd/10;
}
else
{
	alpha = 1;
	
	if (string_positionX < floor(time))
	&& (!instance_exists(obj_texty_exitbox))
	&& (!instance_exists(obj_text_spawning_arrow_preender_any_any)) && (!instance_exists(obj_text_spawning_arrow_preender))
	&& (!instance_exists(obj_text_spawning_arrow))
	{
		audio_stop_sound(snd_typing)
		audio_play_sound(snd_typing,1000,false,global.sfx_volume)
		string_positionX = time	
	}
}

stringy = string_char_at(text,floor(time)+message_pos)
stringy2 = string_char_at(text,floor(time)+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,floor(time)+message_pos+time2+1)
	}
}
else time2 = 0;

if ((string_char_at(text,floor(time)+message_pos-1) == ".") or (string_char_at(text,floor(time)+message_pos-1) == ",") or (string_char_at(text,floor(time)+message_pos-1) == "!"))
 && (floor(time)+message_pos+time2+1 < text_length) && (midpause <= 0)
{
	midpause = 1;
}
else midpause -= 0.1;

if (stringy == "\n") && (switch1 = 0)
 && (floor(time)+message_pos+time2+1 < text_length)
{
	string_positionY += 1;
}

if (((stringy == " ") && (time2 > 0) && (floor(time)+time2 > 46)) or (stringy == "\n"))  && (switch1 = 0)
{
	strn = string_copy(text,time+message_pos,time2)
	strn_length = string_length(strn);
	switch1 = 1
	
	if (instance_number(obj_texty_marker) <= 2)
	{
		spd = 0;
		tex = instance_create_depth(x,y+12,id.depth-5,obj_texty_marker);

		with(tex)
		{
			alpha = 1;
			text = other.text;
			message_pos += other.time + other.message_pos;
			spawnerID = other.spawnerID
			markerX = other.markerX
			markerY = other.markerY
			markerID = other.markerID
			pauser = 0;
			string_positionY = 0;
			time = 0;
			text_length = string_length(text)
		}
	}
	else if (instance_number(obj_texty_marker) > 2) && (spd > 0)
	{
		pauser = 1;
		spd = 0;
		with(spawnerID)
		{
			time = (other.time+other.message_pos)
		}
	}
}

//end of text message - normal nav room
if (time+message_pos+1 >= text_length) && (pauser_end == 0) && (switch_spawnarrow_anyany = 0)
&& (!instance_exists(obj_text_spawning_arrow_preender_any_any)) && (!instance_exists(obj_texty_exitbox))
&& (room != rm_midgame_cutscsne_room)
{
	var inst_arrow2 = instance_create_depth(x+278,y+5,id.depth-5,obj_text_spawning_arrow_preender_any_any)
	with(inst_arrow2)
		{
			spawnerID = other.spawnerID
			markerX = other.markerX
			markerY = other.markerY	
			markerID = other.markerID
		}
	switch_spawnarrow_anyany = 1
}

//end of text message - midgame cutscene
if (floor(time)+message_pos+1 >= text_length) && (text_length > 25)
&& (!instance_exists(obj_introtext_arrowender_destroyallnow))
&& (!instance_exists(obj_text_spawning_arrow))
&& (room = rm_midgame_cutscsne_room)
{
	instance_create_depth(x+278,y+5,id.depth-5,obj_introtext_arrowender_destroyallnow)
}


//enter pressed - normal nav room
if (enter_pressed) && (pauser_end == 0) && (!instance_exists(obj_texty_exitbox))
&& (room != rm_midgame_cutscsne_room)
{
	pauser_end = 1;	
	if (instance_exists(obj_text_spawning_arrow))
		{
			with(obj_text_spawning_arrow)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
		{
			with(obj_text_spawning_arrow_ender_any_trueend)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_preender_any))
		{
			with(obj_text_spawning_arrow_preender_any)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_preender_any_any))
		{
			with(obj_text_spawning_arrow_preender_any_any)
			{
				instance_destroy()
			}
		}
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
		{
			with(obj_text_spawning_arrow_ender_any_trueend)
			{
				instance_destroy()
			}
		}
		
	instance_create_depth(x+278,y+5,id.depth-5,obj_text_spawning_arrow_ender_any_trueend)
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
	{	
		with(obj_text_spawning_arrow_ender_any_trueend)
				{
					spawnerID = other.spawnerID
					markerX = other.markerX
					markerY = other.markerY
					markerID = other.markerID
				}
	}
		
}



//if marker box pressed
if (switch_MARKERBOX = 1) && (switch_MARKERBOX1 = 1) && (markerID > -1)
{
	if (instance_exists(obj_maptile_tile_hint)) && (inst_hint_no = 0) && (inst <= 0)
		{
			inst = instance_create_layer(__view_get( e__VW.XView, 0 ) + floor(markerX-(global.mapgrid_playerx*10))+global.xleft,__view_get( e__VW.YView, 0 ) + floor(markerY+global.mapgrid_playery*10)+global.yup,layer_get_id("Inst_healthui"),obj_maptile_tile_hint)
				
			with(inst)
			{
				tileposx = other.markerX
				tileposy = other.markerY	
				discovered = 1;
				sectortile = global.sector_active
			}	
			
			sectortile = global.sector_active
			
			if (!instance_exists(obj_deathscreennuke_maptile))
			{
				var inst3 = instance_create_depth(inst.x+4,inst.y+4,inst.depth,obj_deathscreennuke_maptile)
				with(inst3)
					{
						tileposx = other.markerX
						tileposy = other.markerY	
						sectortile = global.sector_active
					}
			}
			else if (instance_exists(obj_deathscreennuke_maptile))
			{
				if (obj_deathscreennuke_maptile.sectortile != global.sector_active)
				{
					var inst3 = instance_create_depth(inst.x+4,inst.y+4,inst.depth,obj_deathscreennuke_maptile)
					with(inst3)
					{
						tileposx = other.markerX
						tileposy = other.markerY	
						sectortile = global.sector_active
					}	
				}
			}
		}
	else if (!instance_exists(obj_maptile_tile_hint)) && (inst <= 0)
		{
			inst = instance_create_layer(__view_get( e__VW.XView, 0 ) + floor(markerX-(global.mapgrid_playerx*10))+global.xleft,__view_get( e__VW.YView, 0 ) + floor(markerY+global.mapgrid_playery*10)+global.yup,layer_get_id("Inst_healthui"),obj_maptile_tile_hint)
			with(inst)
			{
				tileposx = other.markerX
				tileposy = other.markerY	
				discovered = 1;
				sectortile = global.sector_active
				
				if (instance_place(x,y,obj_maptile_tile_hint))
				{
					with(instance_place(x,y,obj_maptile_tile_hint))
					{
						if (tileposx = other.tileposx) && (tileposy = other.tileposy) && (sectortile = global.sector_active)
						{
							instance_destroy(other);
						}
					}
				}
			}	
			
			sectortile = global.sector_active
			
			if (!instance_exists(obj_deathscreennuke_maptile))
			{
				var inst3 = instance_create_depth(inst.x+4,inst.y+4,inst.depth,obj_deathscreennuke_maptile)
				with(inst3)
					{
						tileposx = other.markerX
						tileposy = other.markerY	
						sectortile = global.sector_active
					}
			}
			else if (instance_exists(obj_deathscreennuke_maptile))
			{
				if (obj_deathscreennuke_maptile.sectortile != global.sector_active)
				{
					var inst3 = instance_create_depth(inst.x+4,inst.y+4,inst.depth,obj_deathscreennuke_maptile)
					with(inst3)
					{
						tileposx = other.markerX
						tileposy = other.markerY	
						sectortile = global.sector_active
					}	
				}
			}
		}
	
	
	if (instance_exists(obj_maptile_tile_hint)) && (inst > -1) && (instance_exists(inst))
	{
		
		if (markerID > -1) && (inst.sectortile = global.sector_active)
		{
			//X
			if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < obj_camera.x - 10)
			{
				global.xleft += 2;
			}
			else if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > obj_camera.x + 10)
			{
				global.xleft -= 2;
			}
			else if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < obj_camera.x) && ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) >= obj_camera.x - 10)
				{
					global.xleft += 1;
				}
			else if ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > obj_camera.x) && ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) <= obj_camera.x + 10)
				{
					global.xleft -= 1;
				}
		
			////Y
			if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) < obj_camera.y - 10)
				{
					global.yup += 2;
				}
			else if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) > obj_camera.y + 10)
				{
					global.yup -= 2;
				}
			else if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) < obj_camera.y) && ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) >= obj_camera.y - 10)
				{
					global.yup += 1;
				}
			else if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) > obj_camera.y) && ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) <= obj_camera.y + 10)
				{
					global.yup -= 1;
				}
				
				
			//FOUND
			if ((__view_get( e__VW.YView, 0 ) + floor(90+(inst.tileposy*10)-(global.mapgrid_playery*10))+global.yup) == obj_camera.y)
			&& ((__view_get( e__VW.XView, 0 ) + floor(160+(inst.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) == obj_camera.x)
			{
				switch_inst = 0	
			}
		}

	}
	
	if (instance_exists(obj_text_spawning_arrow_ender_any_trueend))
	{	
		with(obj_text_spawning_arrow_ender_any_trueend)
				{
					spawnerID = other.spawnerID
					markerX = other.markerX
					markerY = other.markerY
					markerID = other.markerID
				}
	}
}

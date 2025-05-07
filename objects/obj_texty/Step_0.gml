/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

if (alpha < 1)
{
	alpha += spd/10;
}
else
{
	alpha = 1;
	
	if (string_positionX < floor(time)) && (!instance_exists(obj_text_spawning_arrow))
	{
		audio_stop_sound(snd_typing)
		audio_play_sound(snd_typing,1000,false,global.sfx_volume)
		string_positionX = time	
	}
}

stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,time+message_pos+time2+1)
	}
}
else time2 = 0;

if (stringy == " ") && (time2 > 0) && ((time+time2 > 46) && (string_positionY <= 0)) && (pauser == 0)
{
	strn = string_copy(text,time+message_pos,time2)
	strn_length = string_length(strn);
	string_positionY ++;
	
	if (instance_number(obj_texty) <= 2)
	{
		spd = 0;
		tex = instance_create_depth(x,y+12,obj_scrnDark_navigational2.depth-5,obj_texty);

		with(tex)
		{
			alpha = 1;
			text = other.text;
			message_pos += other.time + other.message_pos;
			spawnerID = other.spawnerID
			pauser = 0;
			string_positionY = 0;
			time = 0;
			text_length = string_length(text)
		}
	}
	else if (instance_number(obj_texty) > 2) && (spd > 0)
	{
		pauser = 1;
		spd = 0;
		with(obj_text_spawning_biome1_1)
		{
			time = (other.time+other.message_pos)
		}
	}
}

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (!instance_exists(obj_text_spawning_arrow_preender))
{
	instance_create_depth(x+278,y+5,obj_scrnDark_navigational2.depth-5,obj_text_spawning_arrow_preender)
}

if (enter_pressed) && (pauser_end == 0)
{
	pauser_end = 1;	
}

if (pauser_end == 1)
{	
	if (instance_exists(obj_maptile_tile_hint))
		{
			if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) == obj_camera.x) && ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) == obj_camera.y)
			&& (!instance_exists(obj_text_spawning_arrow_ender_biome1_1))
			{
				instance_create_depth(other.x+278,other.y+5,obj_scrnDark_navigational2.depth-5,obj_text_spawning_arrow_ender_biome1_1)
			}
			else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < obj_camera.x - 10)
			{
				global.xleft += 4/instance_number(obj_texty);
			}
			else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > obj_camera.x + 10)
			{
				global.xleft -= 4/instance_number(obj_texty);
			}
			else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < obj_camera.x) && ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) >= obj_camera.x - 10)
				{
					global.xleft += 1/instance_number(obj_texty);
				}
			else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > obj_camera.x) && ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) <= obj_camera.x + 10)
				{
					global.xleft -= 1/instance_number(obj_texty);
				}
		
			////Y
			if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) < obj_camera.y - 10)
				{
					global.yup += 4/instance_number(obj_texty);
				}
			else if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) > obj_camera.y + 10)
				{
					global.yup -= 4/instance_number(obj_texty);
				}
			else if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) < obj_camera.y) && ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) >= obj_camera.y - 10)
				{
					global.yup += 1/instance_number(obj_texty);
				}
			else if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) > obj_camera.y) && ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) <= obj_camera.y + 10)
				{
					global.yup -= 1/instance_number(obj_texty);
				}
	}
	if (!instance_exists(obj_maptile_tile_hint))
		{
			inst = instance_create_layer(__view_get( e__VW.XView, 0 ) + floor(150-(global.mapgrid_playerx*10))+global.xleft,__view_get( e__VW.YView, 0 ) + floor(100+global.mapgrid_playery*10)+global.yup,layer_get_id("Inst_healthui"),obj_maptile_tile_hint)
			with(inst)
			{
				tileposx = 15;
				tileposy = 11;
				discovered = 1;
				sectortile = global.sector_active
			}	
			if (!instance_exists(obj_deathscreennuke_maptile))
			{
				var inst3 = instance_create_depth(inst.x+4,inst.y+4,inst.depth,obj_deathscreennuke_maptile)
				with(inst3)
					{
						tileposx = 15;
						tileposy = 11;
						sectortile = global.sector_active
					}
			}
		}
	/*
	else if (inst > 0) or (instance_exists(obj_maptile_tile_hint))
	{
		////X
		if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < obj_camera.x - 10)
			{
				global.xleft += 3;
			}
		else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > obj_camera.x + 10)
			{
				global.xleft -= 3;
			}
		else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) < obj_camera.x) && ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) >= obj_camera.x - 10)
			{
				global.xleft += 1;
			}
		else if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) > obj_camera.x) && ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) <= obj_camera.x + 10)
			{
				global.xleft -= 1;
			}
		
		////Y
		if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) < obj_camera.y - 10)
			{
				global.yup += 3;
			}
		else if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) > obj_camera.y + 10)
			{
				global.yup -= 3;
			}
		else if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) < obj_camera.y) && ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) >= obj_camera.y - 10)
			{
				global.yup += 1;
			}
		else if ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) > obj_camera.y) && ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) <= obj_camera.y + 10)
			{
				global.yup -= 1;
			}
	}
	*/
	if ((__view_get( e__VW.XView, 0 ) + floor(150+(obj_maptile_tile_hint.tileposx*10)-(global.mapgrid_playerx*10))+global.xleft) == obj_camera.x) && ((__view_get( e__VW.YView, 0 ) + floor(100+(obj_maptile_tile_hint.tileposy*10)-(global.mapgrid_playery*10))+global.yup) == obj_camera.y)
		 && (!instance_exists(obj_text_spawning_arrow_ender_biome1_1))
		{
			instance_create_depth(other.x+278,other.y+5,obj_scrnDark_navigational2.depth-5,obj_text_spawning_arrow_ender_biome1_1)
		}
}

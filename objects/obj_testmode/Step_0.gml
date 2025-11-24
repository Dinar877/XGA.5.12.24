/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

image_alpha = alpha;

if (alpha < 1)
{
	alpha += spd/10;
}
else alpha = 1;

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

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}

if (image_alpha < 1)
{
	image_alpha += 0.025;
}
if (image_alpha + 0.05>= 1) && (image_alpha < 1)
{
	image_alpha += 0.05;
}

if (image_alpha == 1) && (up_key_pressed)
{
	selected = 0;
	FadeNow = 0;
	with(obj_recommendedmode)
	{
		selected = 1;	
	}
}

if (selected = 1)
{
	if (FadeNow < 0.6)
	{
		FadeNow += 0.02;	
	}
	else if (FadeNow >= 0.6)
	{
		FadeNow = 0.0;	
	}
}

if (death1) && (alpha > 0)
{
	alpha -= 0.25;
}
else if (death1) && (alpha <= 0)
{
	instance_destroy()
}

if (selected = 1) && (jump_pressed)
{	
	global.corrupted = 1;
	global.mode_recommended = 1;
	global.mode_casual = 0;
	global.cutscene = 1
	
	//all 99 arrays
	for (var p1 = 0; p1 < 99; p1++)
	{
		//cutscenes
		global.cutsceneID[p1] = 0
	}

	//all 999 arrays
	for (var p2 = 0; p2 < 999; p2++)
	{
		//global.switches
		global.doors_redblocker[p2] = 0;
		global.doors_true[p2] = 0;

		global.bossblockers[p2] = 0;
	
		//upgrade
		global.upgradecollected[p2] = 0;
		global.upgradecollected_main[p2] = 0;
		global.upgradetrue[p2] = 0;
		global.upgradeID_room[p2] = 0
	
		//particle systems
		global.inst_particle_N = 0;
		global.inst_particle_system[p2] = 0
		global.inst_particle_emitterID[p2] = 0
		global.inst_particle_type[p2] = 0
	
		//audio
		global.inst_audio_emitterID[p2] = 0
	}

	//all 9999 arrays
	for (var p3 = 0; p3 < 9999; p3++)
	{
		//mapgrid
		global.mapgrid_tilegivenX[p3] = 0;
		global.mapgrid_tilegivenY[p3] = 0;
	
		//markers
		global.marker_inst[p3] = 0;
		global.marker_no[p3] = 0;
		global.marker_coordsX[p3] = 0;
		global.marker_coordsY[p3] = 0;
		global.marker_coordsX2[p3] = 0;
		global.marker_coordsY2[p3] = 0;
		global.marker_sectortile[p3] = 0;
	
		//maps
		global.tilex[p3] = 0;
		global.tiley[p3] = 0;
		global.tiledata[p3] = 0;
		global.tilesprite[p3] = 0;
		global.tilesector[p3] = 0;
		global.tileroom[p3] = 0;

		global.tileblocker[p3] = 0;
		global.tileblocker2[p3] = 0;
		global.tileitem[p3] = 0;
		global.tile_hazard[p3] = 0;
		global.tile_hazard_sprite[p3] = 0;
		global.tile_hazard_redblockerID[p3] = 0;
	}
	if (file_exists("savedata.ini"))
	{
		file_delete("savedata.ini")
	}
	
	instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
}
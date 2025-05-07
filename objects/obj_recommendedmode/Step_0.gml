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
	with(obj_casualmode)
	{
		selected = 1;	
	}
}
else if (image_alpha == 1) && (down_key_pressed)
{
	selected = 0;
	FadeNow = 0;
	with(obj_testmode)
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
	//for making collected upgrades not respawn
	global.upgradecollected[999] = 0;
	global.upgradetrue[9999] = 0;
	
	global.tiledata[9999] = 0;
	global.tilesprite[9999] = 0;
	global.tilex[9999] = 0;
	global.tiley[9999] = 0;
	global.tilesector[9999] = 0;
	global.tileroom[9999] = 0;
	
	global.tileblocker[9999] = 0;
	global.tileblocker2[9999] = 0;
	global.tileitem[9999] = 0;
	global.tiledataN = 0;
	
	global.mapgrid_tilegivenX[9999] = 0;
	global.mapgrid_tilegivenY[9999] = 0;
	global.mapgrid_tilegivenN = 0;
	
	global.doors_redblocker[999] = 0;
	if (file_exists("savedata.ini"))
	{
		file_delete("savedata.ini")
	}
	
	instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
}
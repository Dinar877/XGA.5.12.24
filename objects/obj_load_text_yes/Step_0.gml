/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

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


if (death1 == 0)
{
	if (alpha < 1)
	{
		alpha += 0.025;
	}
	if (alpha + 0.05>= 1) && (alpha < 1)
	{
		alpha += 0.05;
	}
}

if (alpha == 1) && (down_key_pressed)
{
	selected = 0;
	FadeNow = 0;
	with(obj_load_text_no)
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
	instance_create_depth(x,y,self.depth-1,obj_casualmode);
	instance_destroy()
}

if (selected = 1) && (jump_pressed)
{	
	if (file_exists("savedata.ini"))
	{
		global.upgradecollected[999] = 0;
		global.upgradecollected_main[999] = 0;
		global.upgradetrue[999] = 0;
		
		global.tiledata[9999] = false;
		global.tilesprite[9999] = false;
		global.tilex[9999] = false;
		global.tiley[9999] = false;
		global.tilesector[9999] = false;
		global.tileroom[9999] = 0;
		
		global.tileblocker[9999] = false;
		global.tileblocker2[9999] = false;
		global.tileitem[9999] = false;
		global.tiledataN = 0;
		
		global.doors_redblocker[999] = false;
		global.loading_startgame = 1;
		instance_create_layer(160,120,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
	}
	else if (!file_exists("savedata.ini"))
	{
		//for making collected upgrades not respawn
		global.upgradecollected[999] = 0;
		global.upgradecollected_main[999] = 0;
		global.upgradetrue[999] = 0;
		
		global.tiledata[9999] = false;
		global.tilesprite[9999] = false;
		global.tilex[9999] = false;
		global.tiley[9999] = false;
		global.tilesector[9999] = false;
		global.tileroom[9999] = 0;
		
		global.tileblocker[9999] = false;
		global.tileblocker2[9999] = false;
		global.tileitem[9999] = false;
	
		global.tiledataN = 0;
		
		
		
		global.doors_redblocker[999] = false;
		
		instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
	}
	


}
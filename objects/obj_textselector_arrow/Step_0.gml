/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

if (delay < 1)
{
	delay += 0.05;	
	if (goy > 0)
	{
		y = lerp(y,goy.y+4,0.25)
	}
	
	if (goyother > 0)
	{
		obj_textblock_320x180.y = lerp(obj_textblock_320x180.y,obj_textblock_320x180.y1-22,0.25)
		obj_textblock_640x360.y = lerp(obj_textblock_640x360.y,obj_textblock_640x360.y1-22,0.25)
		obj_textblock_960x540.y = lerp(obj_textblock_960x540.y,obj_textblock_960x540.y1-22,0.25)
		obj_textblock_1366x768.y = lerp(obj_textblock_1366x768.y,obj_textblock_1366x768.y1-22,0.25)
		obj_textblock1920x1080.y = lerp(obj_textblock1920x1080.y,obj_textblock1920x1080.y1-22,0.25)
		obj_textblock_fullscrn.y = lerp(obj_textblock_fullscrn.y,obj_textblock_fullscrn.y1-22,0.25)
	}
	else if (goyother < 0)
	{
		obj_textblock_320x180.y = lerp(obj_textblock_320x180.y,obj_textblock_320x180.y1,0.25)
		obj_textblock_640x360.y = lerp(obj_textblock_640x360.y,obj_textblock_640x360.y1,0.25)
		obj_textblock_960x540.y = lerp(obj_textblock_960x540.y,obj_textblock_960x540.y1,0.25)
		obj_textblock_1366x768.y = lerp(obj_textblock_1366x768.y,obj_textblock_1366x768.y1,0.25)
		obj_textblock1920x1080.y = lerp(obj_textblock1920x1080.y,obj_textblock1920x1080.y1,0.25)
		obj_textblock_fullscrn.y = lerp(obj_textblock_fullscrn.y,obj_textblock_fullscrn.y1,0.25)
	}
}
else if (delay >= 1)
{
	goyother = 0;
	//n = 0
	if (down_key_pressed) && (n = 0)
	{
		n++;
		goy = obj_textblock_640x360;
		obj_textblock_640x360.selected = 1;
		obj_textblock_320x180.selected = 0;
		delay = 0;
		exit;
	}
	else if (up_key_pressed) && (n = 0)
	{
		n = 5;
		goy = obj_textblock_fullscrn;
		obj_textblock_fullscrn.selected = 1;
		obj_textblock_320x180.selected = 0;
		delay = 0;
		goyother = 1;
		exit;
	}

	//n = 1
	if (down_key_pressed) && (n = 1)
	{
		n++;
		goy = obj_textblock_960x540;
		obj_textblock_960x540.selected = 1;
		obj_textblock_640x360.selected = 0;
		delay = 0;
		exit;
	}
	else if (up_key_pressed) && (n = 1)
	{
		n--;
		goy = obj_textblock_320x180;
		obj_textblock_320x180.selected = 1;
		obj_textblock_640x360.selected = 0;
		delay = 0;
		exit;
	}

	//n = 2
	if (down_key_pressed) && (n = 2)
	{
		n++;
		goy = obj_textblock_1366x768;
		obj_textblock_1366x768.selected = 1;
		obj_textblock_960x540.selected = 0;
		delay = 0;
		exit;
	}
	else if (up_key_pressed) && (n = 2)
	{
		n--;
		goy = obj_textblock_640x360;
		obj_textblock_640x360.selected = 1;
		obj_textblock_960x540.selected = 0;
		delay = 0;
		exit;
	}

	//n = 3
	if (down_key_pressed) && (n = 3)
	{
		n++;
		goy = obj_textblock1920x1080;
		obj_textblock1920x1080.selected = 1;
		obj_textblock_1366x768.selected = 0;
		delay = 0;
		goyother = 1;
		exit;
	}
	else if (up_key_pressed) && (n = 3)
	{
		n--;
		goy = obj_textblock_960x540;
		obj_textblock_960x540.selected = 1;
		obj_textblock_1366x768.selected = 0;
		delay = 0;
		goyother = -1;
		exit;
	}

	//n = 4
	if (down_key_pressed) && (n = 4)
	{
		n++;
		goy = obj_textblock_fullscrn;
		obj_textblock_fullscrn.selected = 1
		obj_textblock1920x1080.selected = 0;
		delay = 0;
		exit;
	}
	else if (up_key_pressed) && (n = 4)
	{
		n--;
		goy = obj_textblock_1366x768;
		obj_textblock_1366x768.selected = 1;
		obj_textblock1920x1080.selected = 0;
		delay = 0;
		exit;
	}

	//n = 5
	if (down_key_pressed) && (n = 5)
	{
		n=0;
		goy = obj_textblock_320x180;
		obj_textblock_320x180.selected = 1;
		obj_textblock_fullscrn.selected = 0;
		delay = 0;
		goyother = -1;
		exit;
	}
	else if (up_key_pressed) && (n = 5)
	{
		n--;
		goy = obj_textblock1920x1080;
		obj_textblock1920x1080.selected = 1;
		obj_textblock_fullscrn.selected = 0;
		delay = 0;
		exit;
	}

}
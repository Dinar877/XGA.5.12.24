/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

if (delay < 1)
{
	delay += 0.05;	
	if (goy > 0)
	{
		y = lerp(y,goy.y,0.25)
	}
	
	if (goyother > 0)
	{		
		if (goyid > 0)
		{
			goyid.y = lerp(goyid.y,goyid.y1-22,0.25)
		}
	}
	else if (goyother < 0)
	{
		if (goyid > 0)
		{
			goyid.y = lerp(goyid.y,goyid.y1,0.25)
		}
	}
}
else if (delay >= 1)
{
	goyother = 0;
	//n = 0
	if (up_key_pressed) && (n = 0)
	{
		n = 1;
		goy = obj_elevator_exit;
		goy.selected = 1;
		argue1.selected = 0;
		delay = 0;
		goyother = 1;
		exit;
	}
	else if (down_key_pressed) && (n = 0)
	{
		n = 1;
		goy = obj_elevator_exit;
		goy.selected = 1;
		argue1.selected = 0;
		delay = 0;
		goyother = 1;
		exit;
	}
	
	if (down_key_pressed) && (n = 1)
	{
		n = 0;
		goy = argue1;
		goy.selected = 1;
		obj_elevator_exit.selected = 0;
		delay = 0;
		goyother = 1;
		exit;
	}
	else if (up_key_pressed) && (n = 1)
	{
		n = 0;
		goy = argue1;
		goy.selected = 1;
		obj_elevator_exit.selected = 0;
		delay = 0;
		goyother = 1;
		exit;
	}


}
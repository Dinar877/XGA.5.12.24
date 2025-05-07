function menu_1() {
	if (delay < 1)
	{
		delay += 0.1;	
		if (goy > 0)
		{
			y = lerp(y,goy.y+4,0.25)
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
			n = argument_count;
			goy = argument[n];
			argument[n].selected = 1;
			argument[0].selected = 0;
			delay = 0;
			goyother = 1;
			goyid = argument[n];
			exit;
		}
		else if (down_key_pressed) && (n = 0)
		{
			n++;
			goy = argument[n];
			argument[n].selected = 1;
			argument[0].selected = 0;
			delay = 0;
			exit;
		}
	
		if (down_key_pressed) && (n = argument_count)
		{
			n = argument_count;
			goy = argument[n];
			argument[n].selected = 1;
			argument[0].selected = 0;
			delay = 0;
			goyother = 1;
			goyid = argument[n];
			exit;
		}
		else if (up_key_pressed) && (n = argument_count)
		{
			argument[n].selected = 0;
			n--;
			goy = argument[n];
			argument[n].selected = 1;
			delay = 0;
			exit;
		}


	}


}

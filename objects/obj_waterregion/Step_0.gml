/// @description Insert description here
// You can write your code in this editor
if (surface3alpha <= 0) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if(surface3alpha > 0) && (surface2neg == 1)
	{
		surface3alpha -= 0.005;
	}

	if (surface3alpha >= 0.2) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (surface3alpha < 0.2) && (surface2pos == 1)
	{
		surface3alpha += 0.005;
	}
	
frame += (1/room_speed)*5
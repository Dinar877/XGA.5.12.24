/// @description Insert description here
// You can write your code in this editor
if (hit = false)
{
	if (direction1 > 0)
	{
		image_angle += 10;
		x = floor(x+(startx-adder1));
		if (adder1 < 1)
		{
			adder1 += 0.2;
		}
	}
	if (direction1 <= 0)
	{
		image_angle -= 10;
		x = floor(x-(startx-adder1));
		if (adder1 < 1)
		{
			adder1 += 0.2;
		}
    
	}

	if (direction2 > 0) //down getting faster
	{
		y = floor(y +(starty-adder2));
		adder2 -= 0.05;	
	}
	else if (direction2 < 0) // up then down getting faster
	{
		y = floor(y -(starty-adder2));
		adder2 += 0.25;	
	}
}

/// @description Insert description here
// You can write your code in this editor
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

if (direction2 > 0)
{
	y = floor(y +(starty-adder2));
    adder2 += 0.2;	
}
else if (direction2 < 0)
{
	y = floor(y -(starty-adder2));
    adder2 += 0.2;	
}

if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) 
&& (hit = 0) 
&& (starty-adder2 < 0) //falling only
&& (!place_meeting(x,y-(starty-adder2),obj_block)) && (!place_meeting(x,y-1,obj_block)) //not above
{
    hit = 1
	adder1 = 1
	adder2 = 0
	
	audio_stop_sound(snd_beam1_noeffect)
	audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume)
}

if (hit = 1)
{
    if (direction1 > 0)
    {
	    image_angle -= 30;
		
		x = floor(x+(adder1));
		adder1 += 0.2;
		
	    y = floor(y -(5-adder2));
	    adder2 += 0.25;
    }
    if (direction1 <= 0)
    {
	    image_angle += 30;
		
		x = floor(x-(adder1));
		adder1 += 0.2;
		
	    y = floor(y -(5-adder2));
	    adder2 += 0.25;
    }
}

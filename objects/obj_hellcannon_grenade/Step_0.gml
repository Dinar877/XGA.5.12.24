/// @description Insert description here
// You can write your code in this editor
if (hit = 0)
{
	if (direction1 > 0)
	{
	    image_angle += 20;
	    x = floor(x+(startx-adder1));
	    if (adder1 < 1)
	    {
			adder1 += 0.1;
	    }
	}
	if (direction1 <= 0)
	{
	    image_angle -= 20;
	    x = floor(x-(startx-adder1));
	    if (adder1 < 1)
	    {
			adder1 += 0.1;
	    }
    
	}

	if (direction2 > 0)
	{
		y = floor(y +(starty-adder2));
	    adder2 += 0.1;	
	}
	else if (direction2 < 0)
	{
		y = floor(y -(starty-adder2));
	    adder2 += 0.1;	
	}
}


//hit floor
if ((place_meeting(x,y+1,obj_block)) 
or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
or (place_meeting(x,y+1,obj_newslope_left)) or (place_meeting(x,y+1,obj_newslope_right))) 
&& ((position_meeting(x,bbox_bottom+1,obj_block))
or (position_meeting(x,bbox_bottom+1,obj_slope1_left)) or (position_meeting(x,bbox_bottom+1,obj_slope1_right))
or (position_meeting(x,bbox_bottom+1,obj_newslope_left)) or (position_meeting(x,bbox_bottom+1,obj_newslope_right)))
&& (hit = 0) 
{
    hit = 1;
	adder1 = 1;
	adder2 = 0;
	y -= 2;
	
	audio_stop_sound(snd_beam1_noeffect);
	audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume);
	
	//while loop for getting unstuck - floor
	if ((place_meeting(x,y,obj_block)) 
	or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
	or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
	{
		while ((place_meeting(x,y,obj_block)) 
		or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
		or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
		{
			y--;
		}
	}
}

//hit side
if ((place_meeting(x+(direction1),y,obj_block)) 
or (place_meeting(x+(direction1),y,obj_slope1_left)) or (place_meeting(x+(direction1),y,obj_slope1_right))
or (place_meeting(x+(direction1),y,obj_newslope_left)) or (place_meeting(x+(direction1),y,obj_newslope_right))) 
&& ((position_meeting(bbox_left-1,y,obj_block))
or (position_meeting(bbox_left-1,y,obj_slope1_left)) or (position_meeting(bbox_left-1,y,obj_slope1_right))
or (position_meeting(bbox_left-1,y,obj_newslope_left)) or (position_meeting(bbox_left-1,y,obj_newslope_right))
or (position_meeting(bbox_right+1,y,obj_block))
or (position_meeting(bbox_right+1,y,obj_slope1_left)) or (position_meeting(bbox_right+1,y,obj_slope1_right))
or (position_meeting(bbox_right+1,y,obj_newslope_left)) or (position_meeting(bbox_right+1,y,obj_newslope_right)))
&& (hit = 0) 
{
	hit = 1;
    direction1 = -direction1;
	adder1 = 1;
	
	audio_stop_sound(snd_beam1_noeffect);
	audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume);
	
	//while loop for getting unstuck
	if ((place_meeting(x,y,obj_block)) 
	or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
	or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
	{
		while ((place_meeting(x,y,obj_block)) 
		or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
		or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
		{
			x -= -direction1;
		}
	}
}

//hit ceiling
if ((place_meeting(x,y-1,obj_block)) 
or (place_meeting(x,y-1,obj_slope1_left)) or (place_meeting(x,y-1,obj_slope1_right))
or (place_meeting(x,y-1,obj_newslope_left)) or (place_meeting(x,y-1,obj_newslope_right))) 
&& ((position_meeting(x,bbox_top-1,obj_block))
or (position_meeting(x,bbox_top-1,obj_slope1_left)) or (position_meeting(x,bbox_top-1,obj_slope1_right))
or (position_meeting(x,bbox_top-1,obj_newslope_left)) or (position_meeting(x,bbox_top-1,obj_newslope_right)))
&& (hit = 0) 
{
	hit = 1;
    direction2 = 1;
	adder2 = 1;
	
	audio_stop_sound(snd_beam1_noeffect);
	audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume);
	
	//while loop for getting unstuck
	if ((place_meeting(x,y,obj_block)) 
	or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
	or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
	{
		while ((place_meeting(x,y,obj_block)) 
		or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
		or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
		{
			y++;
		}
	}
}


if (hit = 1)
{
	if (!place_meeting(x,y+1,obj_block)) 
	&& (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
	&& (!place_meeting(x,y+1,obj_newslope_left)) && (!place_meeting(x,y+1,obj_newslope_right))
	{
	    if (direction1 > 0)
	    {
		    image_angle -= 30;
		
			x = floor(x+(adder1));
			adder1 += 0.1;
		
		    y = floor(y -(1-adder2));
		    adder2 += 0.25;
	    }
	    if (direction1 <= 0)
	    {
		    image_angle += 30;
		
			x = floor(x-(adder1));
			adder1 += 0.1;
		
		    y = floor(y -(1-adder2));
		    adder2 += 0.25;
	    }
	}
	else hit2 = 1;
	
	
	if (hit2 = 1)
	{
		if (flashwhite < 1)
		{
			flashwhite = 1;
			enemy_hurt = 1;
		}
		else if (flashwhite >= 1)
		{
			flashwhite = 0;
			enemy_hurt = 0;
		}
		
		if (hittimer < 1)
		{
			hittimer += ((1/60)/3);
		}
		else if (hittimer >= 1)
		{
			instance_create_depth(x,y,depth-1,obj_hellcannon_grenade_explosion);
			instance_destroy();
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Debris_bouncing(){
	
if (variable_instance_exists(id,"hit")) && (variable_instance_exists(id,"hit2"))
&& (variable_instance_exists(id,"direction1")) && (variable_instance_exists(id,"direction2"))
&& (variable_instance_exists(id,"startx")) && (variable_instance_exists(id,"starty"))
&& (variable_instance_exists(id,"adder1")) && (variable_instance_exists(id,"adder2"))
&& (variable_instance_exists(id,"timer"))
{
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

		if (direction2 > 0)
		{
			y = floor(y +(starty-adder2));
		    adder2 += 0.25;	
		}
		else if (direction2 < 0)
		{
			y = floor(y -(starty-adder2));
		    adder2 += 0.25;	
		}
	}


	//hit floor
	if ((place_meeting(x,y+1,obj_block)) 
	or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+1,obj_newslope_left)) or (place_meeting(x,y+1,obj_newslope_right))) 
	&& ((position_meeting(x,bbox_bottom+1,obj_block))
	or (position_meeting(x,bbox_bottom+1,obj_slope1_left)) or (position_meeting(x,bbox_bottom+1,obj_slope1_right))
	or (position_meeting(x,bbox_bottom+1,obj_newslope_left)) or (position_meeting(x,bbox_bottom+1,obj_newslope_right)))
	&& (hit = false) 
	{
	    hit = true;
		adder1 = 1;
		adder2 = 0;
		y -= 2;
	
		//audio_stop_sound(snd_beam1_noeffect);
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
	&& (hit = false) 
	{
		hit = true;
	    direction1 = -direction1;
		adder1 = 1;
	
		//audio_stop_sound(snd_beam1_noeffect);
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
	&& (hit = false) 
	{
		hit = true;
	    direction2 = 1;
		adder2 = 1;
	
		//audio_stop_sound(snd_beam1_noeffect);
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


	if (hit = true)
	{
		if (hit2 == false)
		{
			if (!place_meeting(x,y+1,obj_block)) 
			&& (!place_meeting(x,y+1,obj_slope1_left)) && (!place_meeting(x,y+1,obj_slope1_right))
			&& (!place_meeting(x,y+1,obj_newslope_left)) && (!place_meeting(x,y+1,obj_newslope_right))
			{
			    if (direction1 > 0)
			    {
				    image_angle -= 20;
		
					x = floor(x+(adder1));
					adder1 += 0.25;
		
				    y = floor(y -(1-adder2));
				    adder2 += 0.3;
			    }
			    if (direction1 <= 0)
			    {
				    image_angle += 20;
		
					x = floor(x-(adder1));
					adder1 += 0.25;
		
				    y = floor(y -(1-adder2));
				    adder2 += 0.3;
			    }
			}
			else hit2 = true;
		}
	
	
		if (hit2 = true)
		{
			if (image_alpha > 0)
			{
				if (timer < 1)
				{
					timer += (1/60)/4
				}
				else if (timer >= 1)
				{
					image_alpha -= 0.05
				}
			}
			else if (image_alpha > 0)
			{
				instance_destroy();
			}
		}
	}

	}

}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Debris_bouncing(){
	
if (variable_instance_exists(id,"hit")) && (variable_instance_exists(id,"hit2"))
&& (variable_instance_exists(id,"xSpeed")) && (variable_instance_exists(id,"ySpeed"))
&& (variable_instance_exists(id,"adder1")) && (variable_instance_exists(id,"adder2")) //adder1 is x, adde2 is y
&& (variable_instance_exists(id,"timer"))
{
	ySpeed = floor(ySpeed+adder2);
	var whichwayX = sign(xSpeed);
	var whichwayY = sign(ySpeed);
	var collisionLineXForwards = collision_line(x,y,x+xSpeed,y,obj_block,false,true);
	var collisionLineXBackwards = collision_line(x,y,x-xSpeed,y,obj_block,false,true);
	var collisionLineYForwards = collision_line(x,y,x,y+ySpeed,obj_block,false,true);
	var collisionLineYBackwards = collision_line(x,y,x,y-ySpeed,obj_block,false,true);
	


	//before colliding with anything
	if (hit = false)
	{
		//X
		if (xSpeed != 0)
		{
			if (!collisionLineXForwards)
			{
				if (xSpeed > 0)
				{
					image_angle += rotSpeed;
				}
				else if (xSpeed < 0)
				{
					image_angle -= rotSpeed;
				}
				x = floor(x+xSpeed);
			}
			else if (collisionLineXForwards)
			{
				if (!place_meeting(x+sign(xSpeed),y,obj_block)) 
				&& (!place_meeting(x+sign(xSpeed),y,obj_slope1_left)) && (!place_meeting(x+sign(xSpeed),y,obj_slope1_right))
				&& (!place_meeting(x+sign(xSpeed),y,obj_newslope_left)) && (!place_meeting(x+sign(xSpeed),y,obj_newslope_right))
				{
					while (!place_meeting(x+sign(xSpeed),y,obj_block)) 
					&& (!place_meeting(x+sign(xSpeed),y,obj_slope1_left)) && (!place_meeting(x+sign(xSpeed),y,obj_slope1_right))
					&& (!place_meeting(x+sign(xSpeed),y,obj_newslope_left)) && (!place_meeting(x+sign(xSpeed),y,obj_newslope_right))
					{
						x += sign(xSpeed);
					}
				}
			}
		}

		//Y
		if (!collisionLineYForwards)
		{
			y = floor(y+ySpeed);
			adder2 += grav;	
				
			if (xSpeed == 0)
			{
				if (rotDir == 1)
				{
					image_angle += rotSpeed;
				}
				else if (rotDir == 0)
				{
					image_angle -= rotSpeed;
				}
			}
		}
		else if (collisionLineYForwards)
		{
			if (!place_meeting(x,y+sign(ySpeed),obj_block)) 
			&& (!place_meeting(x,y+sign(ySpeed),obj_slope1_left)) && (!place_meeting(x,y+sign(ySpeed),obj_slope1_right))
			&& (!place_meeting(x,y+sign(ySpeed),obj_newslope_left)) && (!place_meeting(x,y+sign(ySpeed),obj_newslope_right))
			{
				while (!place_meeting(x,y+sign(ySpeed),obj_block)) 
				&& (!place_meeting(x,y+sign(ySpeed),obj_slope1_left)) && (!place_meeting(x,y+sign(ySpeed),obj_slope1_right))
				&& (!place_meeting(x,y+sign(ySpeed),obj_newslope_left)) && (!place_meeting(x,y+sign(ySpeed),obj_newslope_right))
				{
					y += sign(ySpeed);
				}
			}
		}
		
	}
	
	
	//After more than one collision
	if (hit = true)
	{
		if (hit2 == false)
		{
			//X
			if (xSpeed != 0)
			{
				if (!collisionLineXForwards)
				{
					if (xSpeed > 0)
					{
						image_angle += 30;
					}
					else if (xSpeed < 0)
					{
						image_angle -= 30;
					}
		
					x = floor(x+(xSpeed/2));
				}
				else if (collisionLineXForwards)
				{
					if (!place_meeting(x+sign(xSpeed),y,obj_block)) 
					&& (!place_meeting(x+sign(xSpeed),y,obj_slope1_left)) && (!place_meeting(x+sign(xSpeed),y,obj_slope1_right))
					&& (!place_meeting(x+sign(xSpeed),y,obj_newslope_left)) && (!place_meeting(x+sign(xSpeed),y,obj_newslope_right))
					{
						while (!place_meeting(x+sign(xSpeed),y,obj_block)) 
						&& (!place_meeting(x+sign(xSpeed),y,obj_slope1_left)) && (!place_meeting(x+sign(xSpeed),y,obj_slope1_right))
						&& (!place_meeting(x+sign(xSpeed),y,obj_newslope_left)) && (!place_meeting(x+sign(xSpeed),y,obj_newslope_right))
						{
							x += sign(xSpeed);
						}
					}
				}
			}
			
			//Y
			if (!collisionLineYForwards) 
			{
				y = floor(y+ySpeed);
				adder2 += grav*2;	
					
				if (xSpeed == 0)
				{
					if (rotDir == 1)
					{
						image_angle += rotSpeed*2;
					}
					else if (rotDir == 0)
					{
						image_angle -= rotSpeed*2;
					}
				}
			}
			else if (collisionLineYForwards)
			{
				if (!place_meeting(x,y+sign(ySpeed),obj_block)) 
				&& (!place_meeting(x,y+sign(ySpeed),obj_slope1_left)) && (!place_meeting(x,y+sign(ySpeed),obj_slope1_right))
				&& (!place_meeting(x,y+sign(ySpeed),obj_newslope_left)) && (!place_meeting(x,y+sign(ySpeed),obj_newslope_right))
				{
					while (!place_meeting(x,y+sign(ySpeed),obj_block)) 
					&& (!place_meeting(x,y+sign(ySpeed),obj_slope1_left)) && (!place_meeting(x,y+sign(ySpeed),obj_slope1_right))
					&& (!place_meeting(x,y+sign(ySpeed),obj_newslope_left)) && (!place_meeting(x,y+sign(ySpeed),obj_newslope_right))
					{
						y += sign(ySpeed);
					}
				}
				else if ((place_meeting(x,y+sign(ySpeed),obj_block)) 
				or (place_meeting(x,y+sign(ySpeed),obj_slope1_left)) or (place_meeting(x,y+sign(ySpeed),obj_slope1_right))
				or (place_meeting(x,y+sign(ySpeed),obj_newslope_left)) or (place_meeting(x,y+sign(ySpeed),obj_newslope_right)))
				&& (ySpeed > 0)
				{
					hit2 = true;
					xSpeed = 0;
					adder1 = 0;
					ySpeed = 0;
					adder2 = 0;
				}
			}
		}
	
	
		if (hit2 = true)
		{
			if (image_alpha > 0)
			{
				if (timer < 1)
				{
					timer += (1/60)/2
				}
				else if (timer >= 1)
				{
					image_alpha -= 0.05
				}
			}
			else if (image_alpha <= 0)
			{
				instance_destroy();
			}
		}
	}
	
	//fail safe if collision checks fail and object is stuck in mid air
	if (failsafeTimer < 1)
	{
		failsafeTimer += ((1/60)/6);
	}
	else if (failsafeTimer >= 1)
	{
		hit = true;
		hit2 = true;
	}


	//hit floor
	if ((place_meeting(x,y+1,obj_block)) 
	or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+1,obj_newslope_left)) or (place_meeting(x,y+1,obj_newslope_right))) 
	&& ((position_meeting(x,bbox_bottom+1,obj_block))
	or (position_meeting(x,bbox_bottom+1,obj_slope1_left)) or (position_meeting(x,bbox_bottom+1,obj_slope1_right))
	or (position_meeting(x,bbox_bottom+1,obj_newslope_left)) or (position_meeting(x,bbox_bottom+1,obj_newslope_right)))
	&& (hit = false) 
	&& (whichwayY > 0) //falling speed
	{
	    hit = true;
		//adder1 = 1;
		adder2 = 0;
		y -= 2;
		ySpeed = -ySpeed/5
	
		//audio_stop_sound(snd_beam1_noeffect);
		var sndID = audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume);
		audio_sound_pitch(sndID,random_range(0.95,1.05));
	
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
		
		exit;
	}

	//hit side
	if ((place_meeting(x+sign(xSpeed),y,obj_block)) 
	or (place_meeting(x+sign(xSpeed),y,obj_slope1_left)) or (place_meeting(x+sign(xSpeed),y,obj_slope1_right))
	or (place_meeting(x+sign(xSpeed),y,obj_newslope_left)) or (place_meeting(x+sign(xSpeed),y,obj_newslope_right))) 
	&& ((position_meeting(bbox_left-1,y,obj_block))
	or (position_meeting(bbox_left-1,y,obj_slope1_left)) or (position_meeting(bbox_left-1,y,obj_slope1_right))
	or (position_meeting(bbox_left-1,y,obj_newslope_left)) or (position_meeting(bbox_left-1,y,obj_newslope_right))
	or (position_meeting(bbox_right+1,y,obj_block))
	or (position_meeting(bbox_right+1,y,obj_slope1_left)) or (position_meeting(bbox_right+1,y,obj_slope1_right))
	or (position_meeting(bbox_right+1,y,obj_newslope_left)) or (position_meeting(bbox_right+1,y,obj_newslope_right)))
	&& (xSpeed != 0) //horizontal movement speed exists
	{
	    xSpeed = -xSpeed;
		adder1 = 1;
	
		//audio_stop_sound(snd_beam1_noeffect);
		var sndID = audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume);
		audio_sound_pitch(sndID,random_range(0.95,1.05));
	
		//while loop for getting unstuck
		if ((position_meeting(bbox_left,y,obj_block))
		or (position_meeting(bbox_left,y,obj_slope1_left)) or (position_meeting(bbox_left,y,obj_slope1_right))
		or (position_meeting(bbox_left,y,obj_newslope_left)) or (position_meeting(bbox_left,y,obj_newslope_right))
		or (position_meeting(bbox_right,y,obj_block))
		or (position_meeting(bbox_right,y,obj_slope1_left)) or (position_meeting(bbox_right,y,obj_slope1_right))
		or (position_meeting(bbox_right,y,obj_newslope_left)) or (position_meeting(bbox_right,y,obj_newslope_right)))
		&& (xSpeed != 0)
		{
			while ((position_meeting(bbox_left,y,obj_block))
			or (position_meeting(bbox_left,y,obj_slope1_left)) or (position_meeting(bbox_left,y,obj_slope1_right))
			or (position_meeting(bbox_left,y,obj_newslope_left)) or (position_meeting(bbox_left,y,obj_newslope_right))
			or (position_meeting(bbox_right,y,obj_block))
			or (position_meeting(bbox_right,y,obj_slope1_left)) or (position_meeting(bbox_right,y,obj_slope1_right))
			or (position_meeting(bbox_right,y,obj_newslope_left)) or (position_meeting(bbox_right,y,obj_newslope_right)))
			&& (xSpeed != 0)
			{
				x += -xSpeed;
			}
		}
		
		exit;
	}

	//hit ceiling
	if ((place_meeting(x,y-1,obj_block)) 
	or (place_meeting(x,y-1,obj_slope1_left)) or (place_meeting(x,y-1,obj_slope1_right))
	or (place_meeting(x,y-1,obj_newslope_left)) or (place_meeting(x,y-1,obj_newslope_right))) 
	&& ((position_meeting(x,bbox_top-1,obj_block))
	or (position_meeting(x,bbox_top-1,obj_slope1_left)) or (position_meeting(x,bbox_top-1,obj_slope1_right))
	or (position_meeting(x,bbox_top-1,obj_newslope_left)) or (position_meeting(x,bbox_top-1,obj_newslope_right)))
	&& (whichwayY < 0) //upwards speed
	{
	    ySpeed = 0
		adder2 = 1;
	
		//audio_stop_sound(snd_beam1_noeffect);
		var sndID = audio_play_sound(snd_beam1_noeffect,1000,false,global.sfx_volume);
		audio_sound_pitch(sndID,random_range(0.95,1.05));
	
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
		
		exit;
	}


	

}

}
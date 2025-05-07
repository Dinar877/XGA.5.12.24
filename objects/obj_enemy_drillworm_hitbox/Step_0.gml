/// @description Insert description here
// You can write your code in this editor
collisionline_block1 = (collision_line(x,y,x,bbox_top-104,obj_block,false,true))
or (collision_line(x,y,x,bbox_top-104,obj_slope1_left,false,true)) or (collision_line(x,y,x,bbox_top-104,obj_slope1_right,false,true))
collisionline_block2 = (collision_line(x,y,x,bbox_bottom+104,obj_block,false,true))
or (collision_line(x,y,x,bbox_bottom+104,obj_slope1_left,false,true)) or (collision_line(x,y,x,bbox_bottom+104,obj_slope1_right,false,true))


//audio shit
if (sndtimer >= 1)
		{
				//audio shiieeeet
				dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
				audio_emitter_gain(global.inst_audio_emitterID[inst_n], (60/dist) * global.sfx_volume)
				
				sndtimer = 0
		}
else sndtimer += (1/room_speed)*(round(random_range(2,3)))

//////////////////////////////////////////////////////////////////////////////////////////GOING DOWN

if (shoottimer == 0) && (state == 0) && (waiting == 0)
&& (!position_meeting(x,bbox_bottom,obj_block)) && (!position_meeting(x,bbox_bottom,obj_slope1_right)) && (!position_meeting(x,bbox_bottom,obj_slope1_left))
{
	vspd = spd
	y += vspd
}

//getting out of ceiling-going down
if (shoottimer < 1) && (state = 0) && (waiting = 0)
&& ((position_meeting(x,bbox_bottom,obj_block)) or (position_meeting(x,bbox_bottom,obj_slope1_left)) or (position_meeting(x,bbox_bottom,obj_slope1_right)))
{
	if ((instance_place(x,bbox_bottom,obj_block)) or (instance_place(x,bbox_bottom,obj_slope1_left)) or (instance_place(x,bbox_bottom,obj_slope1_right)))
	{
		var insty1 = (instance_position(x,bbox_bottom,obj_block))
		var insty2 = (instance_position(x,bbox_bottom,obj_slope1_left))
		var insty3 = (instance_position(x,bbox_bottom,obj_slope1_right))
		
		if (spawntimer >= 1)
		{	
			if (insty1 > 0)
			{
				var insty = instance_create_depth(id.x,insty1.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty2 > 0)
			{
				var insty = instance_create_depth(id.x,insty2.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty3 > 0)
			{
				var insty = instance_create_depth(id.x,insty3.y,id.depth-1,obj_chunk_slow)
			}
			
			with(insty)
			{			
				direction2 = 1
				starty = 3
			}
			spawntimer = 0
		}
		else spawntimer += 0.7
	}
	
	shoottimer += (1/room_speed)/2
}
else if (state == 0) && (shoottimer >= 1)
{
	vspd = spd
	y += vspd
	
	if (!position_meeting(x,bbox_top,obj_block)) && (!position_meeting(x,bbox_top,obj_slope1_left)) && (!position_meeting(x,bbox_top,obj_slope1_right))
	&& (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
	{
		state = 1
		shoottimer = 0
		spawntimer = 0
	}
}

//once out of ceiling and touching floor, change state to 3
if (state = 1)
&& (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
 && (!position_meeting(x,bbox_bottom,obj_block)) && (!position_meeting(x,bbox_bottom,obj_slope1_left)) && (!position_meeting(x,bbox_bottom,obj_slope1_right))
{
	vspd = spd
	y += vspd
}
else if (state = 1)
&& ((instance_position(x,bbox_bottom,obj_block)) or (instance_position(x,bbox_bottom,obj_slope1_left)) or (instance_position(x,bbox_bottom,obj_slope1_right)))
{
	state = 3
	vspd = spd
	y += vspd
}

//turn around object
if (state = 3)
&& ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)))
{
	vspd = spd
	y += vspd
	
	if ((instance_position(x,bbox_top,obj_block)) or (instance_position(x,bbox_top,obj_slope1_left)) or (instance_position(x,bbox_top,obj_slope1_right)))
	{
		var insty1 = (instance_position(x,bbox_top,obj_block))
		var insty2 = (instance_position(x,bbox_top,obj_slope1_left))
		var insty3 = (instance_position(x,bbox_top,obj_slope1_right))
		
		
		
		
		if (spawntimer >= 1)
		{	
			if (insty1 > 0)
			{
				var insty = instance_create_depth(id.x,insty1.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty2 > 0)
			{
				var insty = instance_create_depth(id.x,insty2.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty3 > 0)
			{
				var insty = instance_create_depth(id.x,insty3.y,id.depth-1,obj_chunk_slow)
			}
			
			if (image_angle == 180) && (collisionline_block1) && (collisionline_block2)
			{
				with(insty)
				{			
					direction2 = -1
					starty = 3
				}
			}
			else if (image_angle == 0) && (collisionline_block1) && (collisionline_block2)
			{
				with(insty)
				{			
					direction2 = 1
					starty = 3
				}
			}
			else if (image_angle == 0) && (collisionline_block1) && (!collisionline_block2)
			{
				with(insty)
				{			
					direction2 = 1
					starty = 3
				}
			}
			else if (image_angle == 180) && (collisionline_block2) && (!collisionline_block1)
			{
				with(insty)
				{			
					direction2 = -1
					starty = 3
				}
			}
			
			spawntimer = 0
		}
		else spawntimer += 0.7
	}
}
else if (state = 3)
&& (!position_meeting(x,bbox_top,obj_block)) && (!position_meeting(x,bbox_top,obj_slope1_right)) && (!position_meeting(x,bbox_top,obj_slope1_left))
{
	state = 4
	vspd = -spd
	image_angle = 180
	with(inst)
	{
		image_angle = 180
	}
}

//////////////////////////////////////////////////////////GOING UP

if (shoottimer == 0) && (state == 4) && (waiting == 0)
&& (!position_meeting(x,bbox_top,obj_block)) && (!position_meeting(x,bbox_top,obj_slope1_right)) && (!position_meeting(x,bbox_top,obj_slope1_left))
{
	vspd = -spd
	y += vspd
}

//going up out of floor
if (shoottimer < 1) && (state = 4) && (waiting = 0)
&& ((position_meeting(x,bbox_top,obj_block)) or (position_meeting(x,bbox_top,obj_slope1_left)) or (position_meeting(x,bbox_top,obj_slope1_right)))
{
	if ((instance_place(x,bbox_top,obj_block)) or (instance_place(x,bbox_top,obj_slope1_left)) or (instance_place(x,bbox_top,obj_slope1_right)))
	{
		var insty1 = (instance_position(x,bbox_top,obj_block))
		var insty2 = (instance_position(x,bbox_top,obj_slope1_left))
		var insty3 = (instance_position(x,bbox_top,obj_slope1_right))

		
		
		if (spawntimer >= 1)
		{	
			if (insty1 > 0)
			{
				var insty = instance_create_depth(id.x,insty1.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty2 > 0)
			{
				var insty = instance_create_depth(id.x,insty2.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty3 > 0)
			{
				var insty = instance_create_depth(id.x,insty3.y,id.depth-1,obj_chunk_slow)
			}
			
			with(insty)
			{			
				direction2 = -1
				starty = 3
			}
			spawntimer = 0
		}
		else spawntimer += 0.7
	}
	
	shoottimer += (1/room_speed)/2
}
else if (state == 4) && (shoottimer >= 1)
{
	vspd = -spd
	y += vspd
	
	if (!position_meeting(x,bbox_bottom,obj_block)) && (!position_meeting(x,bbox_bottom,obj_slope1_left)) && (!position_meeting(x,bbox_bottom,obj_slope1_right))
	&& (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
	{
		state = 5
		shoottimer = 0
		spawntimer = 0
	}
}


//going out of down and into up-getting inside the ceiling
//touching ceiling in anyway + state changed to recognize we're inside ceiliing
//once out of ceiling and touching floor, change state to 3
if (state = 5)
&& (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
 && (!position_meeting(x,bbox_top,obj_block)) && (!position_meeting(x,bbox_top,obj_slope1_left)) && (!position_meeting(x,bbox_top,obj_slope1_right))
{
	vspd = -spd
	y += vspd
}
else if (state = 5)
&& ((instance_position(x,bbox_top,obj_block)) or (instance_position(x,bbox_top,obj_slope1_left)) or (instance_position(x,bbox_top,obj_slope1_right)))
{
	state = 6
	vspd = -spd
	y += vspd
}

//turn around object
if (state = 6)
&& ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)))
{
	vspd = -spd
	y += vspd
	
	if ((instance_position(x,bbox_top,obj_block)) or (instance_position(x,bbox_top,obj_slope1_left)) or (instance_position(x,bbox_top,obj_slope1_right)))
	{
		var insty1 = (instance_place(x,y,obj_block))
		var insty2 = (instance_place(x,y,obj_slope1_left))
		var insty3 = (instance_place(x,y,obj_slope1_right))
		

		
		
		
		if (spawntimer >= 1)
		{	
			if (insty1 > 0)
			{
				var insty = instance_create_depth(id.x,insty1.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty2 > 0)
			{
				var insty = instance_create_depth(id.x,insty2.y,id.depth-1,obj_chunk_slow)
			}
			else if (insty3 > 0)
			{
				var insty = instance_create_depth(id.x,insty3.y,id.depth-1,obj_chunk_slow)
			}
			
			if (image_angle == 180) && (collisionline_block1) && (collisionline_block2)
			{
				with(insty)
				{			
					direction2 = 1
					starty = 3
				}
			}
			else if (image_angle == 0) && (collisionline_block1) && (collisionline_block2)
			{
				with(insty)
				{			
					direction2 = -1
					starty = 3
				}
			}
			else if (image_angle == 0) && (collisionline_block1) && (!collisionline_block2)
			{
				with(insty)
				{			
					direction2 = -1
					starty = 3
				}
			}
			else if (image_angle == 180) && (collisionline_block2) && (!collisionline_block1)
			{
				with(insty)
				{			
					direction2 = 1
					starty = 3
				}
			}
			
			spawntimer = 0
		}
		else spawntimer += 0.7
	}
}
else if (state = 6)
&& (!position_meeting(x,bbox_bottom,obj_block)) && (!position_meeting(x,bbox_bottom,obj_slope1_right)) && (!position_meeting(x,bbox_bottom,obj_slope1_left))
{
	state = 0
	vspd = spd
	image_angle = 0
	with(inst)
	{
		image_angle = 0
	}
}
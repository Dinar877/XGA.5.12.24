/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x+hspd,y+vspd,obj_block)) && (!place_meeting(x+hspd,y+vspd,obj_slope1_right)) && (!place_meeting(x+hspd,y+vspd,obj_slope1_left)) && (!place_meeting(x+hspd,y+vspd,obj_block2_invisible)) && (facing = 1)
	{
		dir = point_direction(x,y,obj_player.x,obj_player.y)	
		dist = point_distance(x,y,obj_player.x,obj_player.y)
		
		image_angle = dir+90
		hspd = lengthdir_x(1/2,dir)
		vspd = lengthdir_y(1/2,dir)
		
		x += hspd
		y += vspd
	}
else if ((place_meeting(x+hspd,y+vspd,obj_block)) or (place_meeting(x+hspd,y+vspd,obj_slope1_right)) or (place_meeting(x+hspd,y+vspd,obj_slope1_left))  or (place_meeting(x+hspd,y+vspd,obj_block2_invisible))) && (facing = 1)
	{
		facing = -1
		
		if (place_meeting(x+(sign(hspd)*8),y,obj_block)) or (place_meeting(x+(sign(hspd)*8),y,obj_slope1_left)) or (place_meeting(x+(sign(hspd)*8),y,obj_slope1_right))
		{
			x -= hspd
		}
		if (place_meeting(x,y+(sign(vspd)*8),obj_block)) or (place_meeting(x,y+(sign(vspd)*8),obj_slope1_left)) or (place_meeting(x,y+(sign(vspd)*8),obj_slope1_right))
		{
			y -= vspd
		}
	}
	
if (!place_meeting(x+hspd,y+vspd,obj_block)) && (!place_meeting(x+hspd,y+vspd,obj_slope1_right)) && (!place_meeting(x+hspd,y+vspd,obj_slope1_left)) && (!place_meeting(x+hspd,y+vspd,obj_block2_invisible)) && (facing = -1)
	{
		dir = point_direction(x,y,obj_player.x,obj_player.y)	
		dist = point_distance(x,y,obj_player.x,obj_player.y)
		
		image_angle = dir+90
		hspd = lengthdir_x(1/2,dir)
		vspd = lengthdir_y(1/2,dir)
		
		x += hspd
		y += vspd
	}
else if ((place_meeting(x+hspd,y+vspd,obj_block)) or (place_meeting(x+hspd,y+vspd,obj_slope1_right)) or (place_meeting(x+hspd,y+vspd,obj_slope1_left))  or (place_meeting(x+hspd,y+vspd,obj_block2_invisible))) && (facing = -1)
	{
		facing = 1
		
		if (place_meeting(x+(sign(hspd)*8),y,obj_block)) or (place_meeting(x+(sign(hspd)*8),y,obj_slope1_left)) or (place_meeting(x+(sign(hspd)*8),y,obj_slope1_right))
		{
			x -= hspd
		}
		if (place_meeting(x,y+(sign(vspd)*8),obj_block)) or (place_meeting(x,y+(sign(vspd)*8),obj_slope1_left)) or (place_meeting(x,y+(sign(vspd)*8),obj_slope1_right))
		{
			y -= vspd
		}
	}
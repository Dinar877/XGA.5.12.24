/// @description Insert description here
// You can write your code in this editor







/*
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.pause_exit = 1)
or (global.boss_warning = 1)
or (global.room_transition_nodoors = 1)
or (global.room_transition_nodoors_2 = 1)
 or (global.cutscene_suit = 1)
{
	image_speed = 0;
	if (instance_exists(obj_darkeater_sprites))
	{
		obj_darkeater_sprites.image_speed = 0
	}
	exit;	
}
else 
{
	image_speed = 1;
	if (instance_exists(obj_darkeater_sprites))
	{
		obj_darkeater_sprites.image_speed = 1
	}	
}


y = floor(y);
x = floor(x);














//variables
xadder2 = obj_player.x-x
yadder2 = obj_player.y-y
player_dir = point_direction(id.x+xadder,id.y+yadder,obj_player.x,obj_player.y)
player_dist = point_distance(id.x+xadder,id.y+yadder,obj_player.x,obj_player.y)



dropdown_right = ((!place_meeting(x+8,y+9,obj_block)) or (!place_meeting(x+24,y+9,obj_block)) or (!place_meeting(x+40,y+9,obj_block))
or (!place_meeting(x+56,y+9,obj_block)) or (!place_meeting(x+72,y+9,obj_block)))
&& (!place_meeting(x+8,y,obj_block))

dropdown_left = ((!place_meeting(x-8,y+9,obj_block)) or (!place_meeting(x-24,y+9,obj_block))
or (!place_meeting(x-40,y+9,obj_block)) or (!place_meeting(x-56,y+9,obj_block)) or (!place_meeting(x-72,y+9,obj_block)))
&& (!place_meeting(x-8,y,obj_block))



player_dir_notfree = (collision_line(x,y,obj_player.x,obj_player.y,obj_block2,false,true))
or (collision_line(x,y,obj_player.x,obj_player.y,obj_slope1_left,false,true))
or (collision_line(x,y,obj_player.x,obj_player.y,obj_slope1_right,false,true))



turnaround_left = collision_line(x,y,x-60,y,obj_block,false,true) && (place_meeting(x,y+16,obj_block))
&& (place_meeting(x,y-16,obj_block)) && (player_dir_notfree > 0)

turnaround_right = collision_line(x,y,x+60,y,obj_block,false,true) && (place_meeting(x,y+16,obj_block))
&& (place_meeting(x,y-16,obj_block)) && (player_dir_notfree > 0)




falldown = (player_dir_notfree > 0) && (place_meeting(x+hspd,y,obj_block)) && (place_meeting(x,y-16,obj_block)) && (!place_meeting(x,y+16,obj_block))


jumpup = (player_dir_notfree > 0) && (!turnaround_left) && (!turnaround_right) && (!place_meeting(x,y-16,obj_block))



player_dir_notfreeX = (collision_line(x,y,obj_player.x,y,obj_block2,false,true)) or (collision_line(x,y,obj_player.x,y,obj_slope1_left,false,true)) or (collision_line(x,y,obj_player.x,y,obj_slope1_right,false,true))
player_dir_notfreeY = (collision_line(x,y,x,obj_player.y,obj_block2,false,true)) or (collision_line(x,y,x,obj_player.y,obj_slope1_left,false,true)) or (collision_line(x,y,x,obj_player.y,obj_slope1_right,false,true))


onground = place_meeting(x,y+1,obj_block) or place_meeting(x,y+1,obj_slope1_left) or place_meeting(x,y+1,obj_slope1_right)















//turning and facing
if (facing = -1) && (((runnow <= 0) && (obj_player.x > x)) or ((place_meeting(x-1,y-2,obj_block))) or (turnaround_left)) && (turning <= 0)
&& (state != darkeater_fall) && (state != darkeater_pierce)
			{
				turning = 1	
			}
else if (facing = 1) && (((runnow <= 0) && (obj_player.x < x)) or ((place_meeting(x+1,y-2,obj_block))) or (turnaround_right)) && (turning <= 0)
&& (state != darkeater_fall) && (state != darkeater_pierce)
			{
				turning = 1	
			}
			
if (obj_player.x > x)
&& (((facing = -1) && (runnow <= 0)) or ((dropdown_right) && (!dropdown_left))) && (state = darkeater_fall)
			{
				facing = 1	
			}
else if (obj_player.x < x)
&& (((facing = 1) && (runnow <= 0)) or ((!dropdown_right) && (dropdown_left))) && (state = darkeater_fall)
			{
				facing = -1	
			}
			
			
//turning sprites
if (turning > 0) && (state != darkeater_fall)// && (runnow <= 0)
{
	if (instance_exists(obj_darkeater_sprites))
	{
		with(obj_darkeater_sprites)
		{
			if (other.facing = 1) && (sprite_index != spr_darkeater_turnr2l)
			{
				sprite_index = spr_darkeater_turnr2l
				image_index = 0
			}
			else if (sprite_index = spr_darkeater_turnr2l) && (image_index >= image_number-1)
			{
				sprite_index = spr_darkeater_idle_left
				other.facing = -1
				other.turning = 0
			}
			else if (other.facing = -1) && (sprite_index != spr_darkeater_turnl2r)
			{
				sprite_index = spr_darkeater_turnl2r
				image_index = 0
			}
			else if (sprite_index = spr_darkeater_turnl2r) && (image_index >= image_number-1)
			{
				sprite_index = spr_darkeater_idle_right
				other.facing = 1
				other.turning = 0
			}
		}
	}
}
else if (turning > 0) && (state = darkeater_fall)
{
	turning = 0
}

//chase player and move
if ((obj_player.x != x) or (obj_player.y != y)) && (turning <= 0) && (player_dir_notfree <= 0)
{
	xgoal = 0
	ygoal = 0
	runnow = 0
	jumpnow = 0
	
	if (player_dir_notfree <= 0)
	{
		while (obj_player.x-x != xadder) && (!place_meeting(x+hspd,y,obj_player))
		{			
			if (obj_player.x-x > xadder)
			{
				xadder++	
			}
			else if (obj_player.x-x < xadder)
			{
				xadder--	
			}
			else if (obj_player.x-x = xadder)
			{
				break;
			}
		}
		
		while (obj_player.y-y != yadder) && (!place_meeting(x+xadder2,y,obj_slope1_right)) && (!place_meeting(x+xadder2,y,obj_slope1_left))
		{	
			if (obj_player.y-y > yadder)
			{
				yadder++	
			}
			else if (obj_player.y-y < yadder)
			{
				yadder--	
			}
			else if (obj_player.y-y = yadder)
			{
				break;
			}
		}
	}
}
else if (place_meeting(x+hspd,y,obj_player)) && (state != darkeater_fall) && (!place_meeting(x+xadder2,y,obj_slope1_right)) && (!place_meeting(x+xadder2,y,obj_slope1_left))
{
	xadder = 0
	yadder = 0
}
else if (turning > 0)
{
	xadder = 0
	yadder = 0
}

if ((obj_player.x != x) or (obj_player.y != y)) && (player_dir_notfree > 0)
	{
		//if blocked by platform
		while (obj_player.y-y != yadder) && (!place_meeting(x+hspd,y,obj_player)) && ((place_meeting(x+facing,y+1,obj_block))
		or (place_meeting(x+facing,y-1,obj_block)) or (place_meeting(x,y+vspd,obj_block)) or (player_dir_notfree > 0))
		{			
			if ((place_meeting(x+facing,y+1,obj_block)) or (place_meeting(x+facing,y-1,obj_block)) or (player_dir_notfree > 0))
			{
				runnow = 1
				break;
			}
			else if ((!place_meeting(x+facing,y+1,obj_block)) && (!place_meeting(x+facing,y-1,obj_block)) && (player_dir_notfree <= 0))
			{
				runnow = 0
				break;
			}
		}
		
		//if blocked by single wall in the air
		while (obj_player.x-x != xadder) && (!place_meeting(x+xadder2,y,obj_slope1_right)) && (!place_meeting(x+xadder2,y,obj_slope1_left))
		&& ((place_meeting(x+1,y,obj_block)) or (place_meeting(x-1,y,obj_block)) or (place_meeting(x+hspd,y-1,obj_block)))
		&& (player_dir_notfreeX > 0) && ((!place_meeting(x,y+sprite_height,obj_block)) && (!place_meeting(x,y-sprite_height,obj_block)))
		{	
			if ((place_meeting(x+1,y,obj_block)) or (place_meeting(x-1,y,obj_block)) or (place_meeting(x+hspd,y-1,obj_block)))
			&& (player_dir_notfreeX > 0) && ((!place_meeting(x,y+sprite_height,obj_block)) && (!place_meeting(x,y-sprite_height,obj_block)))
			{
				jumpnow = 1
				break;
			}
			else if ((!place_meeting(x+1,y,obj_block)) && (!place_meeting(x-1,y,obj_block)) && (!place_meeting(x+hspd,y-1,obj_block))
			&& (player_dir_notfreeX <= 0)) && ((place_meeting(x,y+sprite_height,obj_block)) or (place_meeting(x,y-sprite_height,obj_block)))
			{
				jumpnow = 0
				break;
			}
		}
		
		//if blocked by tons of blocks in the way of the player and xga
		while (player_dir_notfree > 0) && (jumpup > 0) && (!place_meeting(x,y-sprite_height,obj_block)) && ((!dropdown_left) && (!dropdown_right))
		{	
			if (player_dir_notfree > 0) && (jumpup > 0) && (!place_meeting(x,y-sprite_height,obj_block)) && ((!dropdown_left) && (!dropdown_right))
			{
				jumpnow = 1
				break;
			}
			else if (player_dir_notfree <= 0) or (jumpup <= 0) or (place_meeting(x,y-sprite_height,obj_block))
			{
				jumpnow = 0
				break;
			}
		}
		
		
		if (obj_player.x-x != xadder) && (!place_meeting(x+xadder2,y,obj_slope1_right)) && (!place_meeting(x+xadder2,y,obj_slope1_left)) &&
		((!place_meeting(x+1,y,obj_block)) && (!place_meeting(x-1,y,obj_block)) && (!place_meeting(x+hspd,y-1,obj_block))
			&& (player_dir_notfreeX <= 0)) && ((place_meeting(x,y+sprite_height,obj_block)) or (place_meeting(x,y-sprite_height,obj_block)))
			{
				jumpnow = 0
			}
		else if (falldown > 0)
			{
				jumpnow = 0	
			}
	}

hspd = floor(hspd)
vspd = floor(vspd)

if ((!place_meeting(x+hspd,y+(vspd),obj_slope1_left)) && (!place_meeting(x+hspd,y+(vspd),obj_slope1_right))) && (place_meeting(x+hspd,y+(vspd),obj_block))
	{
		while (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (place_meeting(x+hspd,y+(vspd),obj_block))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	}

if ((!place_meeting(x,y+(vspd),obj_slope1_left)) && (!place_meeting(x,y+(vspd),obj_slope1_right))) && (place_meeting(x,y+(vspd),obj_block))
	{
		while (!place_meeting(x,y+sign(vspd),obj_block)) && (place_meeting(x,y+(vspd),obj_block))
		{
			y += sign(vspd)
		}
	}
	
if ((place_meeting(x+hspd,y,obj_slope1_left)) or (place_meeting(x+hspd,y,obj_slope1_right))) && (place_meeting(x+hspd,y,obj_block))
	{
		while (!place_meeting(x+sign(hspd),y,obj_block)) && (place_meeting(x+hspd,y,obj_block))
		{
			x += sign(hspd)
		}
	}
	
//fail safe in case the checks above don't work-left slope
while (place_meeting(x+1,y-1,obj_slope1_left))
{
                y --;
}
//fail safe in case the checks above don't work-right slope
while (place_meeting(x-1,y-1,obj_slope1_right))
{
                y --;
}

//fail safe if inside collision block
if (place_meeting(x,y,obj_block))
	{
		while (position_meeting(x,id.bbox_top,obj_block))
			{
				y ++;	
			}
	}

if ((!place_meeting(x+hspd,y+(vspd),obj_slope1_left)) && (!place_meeting(x+hspd,y+(vspd),obj_slope1_right))) && (place_meeting(x,y,obj_block))
	{
		while (place_meeting(x,y,obj_block))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}
	}




State_machine_execute()	
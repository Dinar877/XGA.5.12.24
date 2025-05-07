/// @description Insert description here
// You can write your code in this editor

//spawn explosions
if (explosionTimer < 1)
{
	explosionTimer += 0.1;
}
else if (explosionTimer >= 1)
{
	explosionTimer = 0;	
	if (explosionCount < 1)
	{
		instance_create_depth(x,y-10,id.depth-1,obj_enemy_explosion);
		explosionCount = 1;
	}
	else if (explosionCount >= 1)
	{
		instance_create_depth(x,y+10,id.depth-1,obj_enemy_explosion);
		explosionCount = 0;
	}
}

//move
if (hspd != 0)
{
	x += hspd;	
}

//touch wall, destroy
if (place_meeting(x,y,obj_block))
{
	instance_destroy();	
}
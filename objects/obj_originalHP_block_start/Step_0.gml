/// @description Insert description here
// You can write your code in this editor
//xga intro effect
if (image_alpha <= 1) && (instance_exists(obj_player)) && (global.cutscene = 0)
{
	image_alpha += (1/room_speed)/2
}
else if (image_alpha >= 1) && (global.cutscene = 1)
{
	image_alpha = 0
}

//instadd
if (instadd = 0)
{
	if (n = 1)
	{
		instadd = 2
		xpos = 5
		depth = -200
	}
	else if (n = 2)
	{
		instadd = 2
		xpos = ((instadd-1)*5)-1
		ypos = sprite_height-2
		sprite_index = spr_originalHP_block2
		depth = -100
	}
	else if (n = 3)
	{
		instadd = 3
		xpos = (instadd-1)*5
		depth = -200
	}
	else if (n = 4)
	{
		instadd = 3
		xpos = ((instadd-1)*5)-1
		ypos = sprite_height-2
		sprite_index = spr_originalHP_block2
		depth = -100
	}
	else if (n = 5)
	{
		instadd = 4
		xpos = (instadd-1)*5
		depth = -200
	}
	else if (n = 6)
	{
		instadd = 4
		xpos = ((instadd-1)*5)-1
		ypos = sprite_height-2
		sprite_index = spr_originalHP_block2
		depth = -100
	}
	else if (n = 7)
	{
		instadd = 5
		xpos = (instadd-1)*5
		depth = -200
	}
	else if (n = 8)
	{
		instadd = 5
		xpos = ((instadd-1)*5)-1
		ypos = sprite_height-2
		sprite_index = spr_originalHP_block2
		depth = -100
	}
	else if (instadd = 0) && (n = 0)
	{
		instadd = instance_number(obj_originalHP_block)	
	}
}




//shader
if (FadeNow > 0) 
{ 
	FadeNow -= 0.01; 
}

if (invincible > 0)
{
    invincible -= 1.6;
    flashwhite_limit += 0.1; 
}
if (invincible <= 1) && (flashwhite_limit > 0)
{
    invincible +=1 - flashwhite_limit;
}
if (flashwhite_limit >= 1)
{
    invincible = 0;
    flashwhite_limit = 0;
}


//sprite changing
if (global.health1 >= (n)) && (global.health_limit >= (n))
{
	if (sprite_index = spr_originalHP_block1_off)
	{
		sprite_index = spr_originalHP_block1
		FadeNow = 0.5
	}
	else if (sprite_index = spr_originalHP_block2_off)
	{
		sprite_index = spr_originalHP_block2
		FadeNow = 0.5
	}
}
else if (global.health1 < (n)) && (global.health_limit >= (n))
{
	if (sprite_index = spr_originalHP_block1)
	{
		sprite_index = spr_originalHP_block1_off
		invincible = 1
		FadeNow = 0
	}
	if (sprite_index = spr_originalHP_block2)
	{
		sprite_index = spr_originalHP_block2_off
		invincible = 1
		FadeNow = 0
	}
	
}
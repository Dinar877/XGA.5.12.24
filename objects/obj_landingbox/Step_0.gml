/// @description Insert description here
// You can write your code in this editor
if (sprite_index = spr_boss_spider_jumpdasdhblur) && (image_index >= image_number - 1)
{
	sprite_index = spr_boss_spider_landingbox;	
}
if (sprite_index = spr_boss_spider_landingbox)
{
	if (image_alpha < 0.7)
	{
		image_alpha += 0.007;	
	}
	else image_alpha = 0.3;
	
	if (obj_player.x > obj_landingbox.x) && (!place_meeting(obj_landingbox.x+1,obj_landingbox.y,obj_block2_invisible_bossdoor))
	{
		obj_landingbox.x+=2;
	}
	else if (obj_player.x < obj_landingbox.x) && (!place_meeting(obj_landingbox.x-1,obj_landingbox.y,obj_block2_invisible_bossdoor))
	{
		obj_landingbox.x-=2;
	}
	
	if (image_index >= image_number - 1)
	{
		finishtime ++;	
	}
	
	if (finishtime >= 25)
	{
		image_alpha = 0.5;
		sprite_index = spr_boss_spider_landingbox1
	}
}

if (sprite_index = spr_boss_spider_landingbox1) && (image_index >= image_number - 1)
{
	with(obj_boss_spider_hitbox)
	{
		x = obj_landingbox.x;
		y = obj_landingbox.y+225;
		State_machine_switch_state(legs_superjump_land)
		statetimer2jump = 0;
		statetimer2stamp = 0;
	}
	with(obj_boss_spider_legs)
	{
		image_index = 0;	
	}
	go1 = 1;
}

if (go1 = 1)
{
	instance_destroy()	
}
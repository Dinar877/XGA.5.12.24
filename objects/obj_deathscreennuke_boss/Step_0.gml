/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_boss_spider_hitbox))
{
	image_alpha += 0.015;
	image_xscale += 0.2;
	image_yscale += 0.2;
}
else if (!instance_exists(obj_boss_spider_hitbox))
{
	image_alpha -= 0.1;
}

if (image_alpha <= 0) && (!instance_exists(obj_boss_spider_hitbox))
{
	instance_destroy()	
}
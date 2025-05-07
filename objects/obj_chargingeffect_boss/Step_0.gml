/// @description Insert description here
// You can write your code in this editor
if (obj_boss_spider_eye.sprite_index = spr_boss_spider_eye_idle_left)
{
x = obj_boss_spider_eye.x-7;
}
else if (obj_boss_spider_eye.sprite_index = spr_boss_spider_eye_idle_left)
{
x = obj_boss_spider_eye.x+7;
}
y = obj_boss_spider_eye.y;

if (image_index >= image_number - 1) && (counter2 = 0)
{
	counter++;	
}

if (counter > 6)
{
	counter2 = 1;
	counter = 0;
	sprite_index = spr_boss_spider_chargingshine;
}

if (counter2 > 0) && (counter2 <= 20)
{
	counter2++;	
	image_angle += 1;
}

if (counter2 > 20) && (image_index >= image_number - 1)
{
	with(obj_boss_spider_eye)
	{
		State_machine_switch_state(spider_shooting)	
	}
	instance_destroy()
}
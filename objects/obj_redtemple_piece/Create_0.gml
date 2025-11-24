decider = round(random_range(0,3))
//decider = 1

if (decider == 0)
{
	sprite_index = spr_xga3_rock1	
}
else if (decider == 1)
{
	sprite_index = spr_xga3_rock2	
}
if (decider == 2)
{
	sprite_index = spr_xga3_rock3	
}
if (decider == 3)
{
	sprite_index = spr_xga3_rock4	
}

whichBlocker = 0;

layer = layer_get_id("Inst_level_0");

image_angle = round(random_range(image_angle = 0,image_angle = 360));

Debris_init(0,round(random_range(-5,-14)),0.05, 10)
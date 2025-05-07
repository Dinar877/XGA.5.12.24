/// @description Insert description here
// You can write your code in this editor
alpha += 0.015;
xscale += 0.04;
yscale += 0.04;
image_alpha = alpha
if (alpha >= 1) && (!instance_exists(obj_darkeater_attackshine1))
{
	instance_create_depth(obj_intro_spaceship1.x,obj_intro_spaceship1.y,id.depth-1,obj_darkeater_attackshine1)
}
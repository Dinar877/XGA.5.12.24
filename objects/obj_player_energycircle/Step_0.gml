/// @description Insert description here
// You can write your code in this editor
image_alpha -= (1/60)/5;
image_xscale += 0.25
image_yscale += 0.25

if (image_alpha <= 0)
{
	instance_destroy()	
	exit;
}

if (instance_place(x,y,obj_xga_replicator_bg1_xga))
{
	with(obj_xga_replicator_bg1_xga)
	{
		spawn_energycircle = 1	
	}
}
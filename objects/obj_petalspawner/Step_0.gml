/// @description Insert description here
// You can write your code in this editor
if(timer == 0) && (instance_number(obj_petal) < 20)
{
    xx = irandom_range(bbox_left, bbox_right);
    instance_create_layer(xx, bbox_top+8,layer_get_id("Inst_afterimages"), obj_petal);
}
if(timer <= 0) timer = irandom_range(60, 120);
timer --;

if (instance_exists(obj_petal))
{
	with(obj_petal)
	{
		y += fallSpeed; //falling rate, can be easily adjusted

		if (!place_meeting(x,y,obj_petalspawner))
		{
			instance_destroy()	
		}	
	}
}
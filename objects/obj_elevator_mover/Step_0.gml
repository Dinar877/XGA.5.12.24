/// @description Insert description here
// You can write your code in this editor
if (ender == 0)
{
	x += adder1
	with(obj_player)
	{
		x += obj_elevator_mover.adder1
	}
	with(object_player2_0_sprites)
	{
		x += obj_elevator_mover.adder1
	}
	
	if (instance_exists(obj_elevator_top1))
	{
		with(obj_elevator_top1)
		{
			x += obj_elevator_mover.adder1
		}
	}
	if (instance_exists(obj_elevator_top1_right))
	{
		with(obj_elevator_top1_right)
		{
			x += obj_elevator_mover.adder1
		}
	}
	with(obj_elevator_bottom)
	{
		x += obj_elevator_mover.adder1
	}
	with(obj_elevator_bottom2)
	{
		x += obj_elevator_mover.adder1
	}
	adder1 += direction1;
}

timer += 0.005;

if (timer >= 1) && (instance_exists(obj_elevator_top1))
{
	instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrnDark_random_loadroom_TRUEoutro)	
}
else if (timer >= 1) && (instance_exists(obj_elevator_top1_right))
{
	instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_scrnDark_random_loadroom_TRUEoutro_right)	
}
if (instance_exists(obj_blast_effect))
{
	if (obj_blast_effect.pause <= 0) && (global.charging > 0)
	{
		x = obj_blast_effect.x
		y = obj_blast_effect.y
		image_alpha = 1
	}
	else if (obj_blast_effect.pause > 0)
	{
		image_alpha = 0
		script_execute(charging_BIGeffect_location)
	}
	else if (global.shoot > 0)
	{
		instance_destroy()
		exit;
	}
}

if (global.facingDir = 1)
{
	sprite_index = spr_begin_chargeshot2
}
else if (global.facingDir = -1)
{
	sprite_index = spr_begin_chargeshot2_left
}
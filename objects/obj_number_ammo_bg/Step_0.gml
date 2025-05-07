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

if (global.shoot_ammo > 0)
{
	if (global.shoot_reload < 1)
	{
		if (global.shoot_ammo > (global.shoot_ammo_start/2))
		{
			sprite_index = spr_ammo_box
		}
		else sprite_index = spr_ammo_box_low
	}
	else if (global.shoot_ammo != global.shoot_ammo_start)
	{
		if (sprite_index != spr_ammo_box_recharge)
		{
			sprite_index = spr_ammo_box_recharge	
		}
		else if (sprite_index == spr_ammo_box_recharge) && (image_index >= image_number-1)
		{
			sprite_index = spr_ammo_box
			global.shoot_ammo = global.shoot_ammo_start
			global.shoot_reload = 0;
		}	
	}
}
else
{
	//reload when no ammo left
	if (sprite_index != spr_ammo_box_recharge)
	{
		sprite_index = spr_ammo_box_recharge	
	}
	else if (sprite_index == spr_ammo_box_recharge) && (image_index >= image_number-1)
	{
		sprite_index = spr_ammo_box
		global.shoot_ammo = global.shoot_ammo_start
	}
}
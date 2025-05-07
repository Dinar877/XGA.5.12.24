/// @description Insert description here
// You can write your code in this editor
if (enemy_hurt > 0)
{
	if (doorleft)
	{
		sprite_index = spr_doorstopper_blue_left_hurt;
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_blue_left_hurt;
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_blue_right_hurt;
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_blue_right_hurt;
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_blue_right_hurt;
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_blue_left_hurt;
	}
	
	draw_self();
	enemy_hurt = 0;
}
else  if (enemy_hurt <= 0)
{
	if (doorleft)
	{
		sprite_index = spr_doorstopper_blue_left;
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_blue_left;
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_blue_right;
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_blue_right;
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_blue_right;
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_blue_left;
	}
	draw_self();
}